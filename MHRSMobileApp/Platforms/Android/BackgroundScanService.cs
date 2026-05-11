using Android.App;
using Android.Content;
using Android.OS;
using AndroidX.Core.App;
using MHRS_OtomatikRandevu.Models.Web;
using MHRS_OtomatikRandevu.Services;
using MHRSMobileApp.Services;

namespace MHRSMobileApp.Platforms.Android;

[Service(Enabled = true, Exported = false, ForegroundServiceType = global::Android.Content.PM.ForegroundService.TypeDataSync)]
public class BackgroundScanService : Service
{
    public const string ActionStart = "MHRSMobileApp.Action.StartScan";
    public const string ActionStop = "MHRSMobileApp.Action.StopScan";
    public const string ExtraIntervalSeconds = "intervalSeconds";

    private const string ChannelId = "mhrs_scan_channel";
    private const int NotificationId = 1417;

    private CancellationTokenSource? _cts;
    private Task? _scanTask;

    public override IBinder? OnBind(Intent? intent)
    {
        return null;
    }

    public override StartCommandResult OnStartCommand(Intent? intent, StartCommandFlags flags, int startId)
    {
        if (intent?.Action == ActionStop)
        {
            StopScanning();
            StopSelf();
            return StartCommandResult.NotSticky;
        }

        var intervalSeconds = intent?.GetIntExtra(ExtraIntervalSeconds, ScanSettingsStore.GetInt(ScanSettingsStore.KeyAutoIntervalSeconds, 30))
            ?? ScanSettingsStore.GetInt(ScanSettingsStore.KeyAutoIntervalSeconds, 30);

        if (intervalSeconds < 10)
        {
            intervalSeconds = 10;
        }

        CreateNotificationChannel();
        StartForeground(NotificationId, BuildNotification("Arka planda tarama baslatiliyor..."));

        StopScanning();
        _cts = new CancellationTokenSource();
        _scanTask = Task.Run(() => RunScanLoopAsync(intervalSeconds, _cts.Token));

        ScanSettingsStore.SetAutoRequestCount(0);
        ScanSettingsStore.SetAutoLastStatus("Tarama baslatildi.");
        ScanSettingsStore.SetAutoScanRunning(true);
        return StartCommandResult.Sticky;
    }

    public override void OnDestroy()
    {
        StopScanning();
        ScanSettingsStore.SetAutoScanRunning(false);
        base.OnDestroy();
    }

    private void StopScanning()
    {
        try
        {
            _cts?.Cancel();
        }
        catch
        {
            // no-op
        }
        finally
        {
            _cts?.Dispose();
            _cts = null;
            _scanTask = null;
            ScanSettingsStore.SetAutoScanRunning(false);
        }
    }

    private async Task RunScanLoopAsync(int intervalSeconds, CancellationToken token)
    {
        var service = new WebMhrsService(new ClientService());
        var requestCount = ScanSettingsStore.GetAutoRequestCount();

        while (!token.IsCancellationRequested)
        {
            requestCount++;
            ScanSettingsStore.SetAutoRequestCount(requestCount);

            try
            {
                var tokenValue = ScanSettingsStore.GetToken();
                if (string.IsNullOrWhiteSpace(tokenValue))
                {
                    UpdateNotification($"Deneme #{requestCount}: Token bulunamadi. Tarama beklemede.");
                    await Task.Delay(TimeSpan.FromSeconds(intervalSeconds), token);
                    continue;
                }

                service.UseToken(tokenValue);
                var form = BuildSlotSearchForm();
                if (form.ProvinceId <= 0 || form.ClinicId <= 0)
                {
                    UpdateNotification($"Deneme #{requestCount}: Filtreler eksik. Il, ilce, klinik secimi gerekli.");
                    await Task.Delay(TimeSpan.FromSeconds(intervalSeconds), token);
                    continue;
                }

                UpdateNotification($"Deneme #{requestCount}: Slot taraniyor...");
                var search = await service.SearchSlotsAsync(form);
                if (!string.IsNullOrWhiteSpace(search.ErrorMessage))
                {
                    if (string.Equals(search.ErrorCode, "LGN2001", StringComparison.OrdinalIgnoreCase))
                    {
                        UpdateNotification("Oturum sonlandi. Tokeni yenileyip otomatik taramayi tekrar baslatin.");
                        StopSelf();
                        return;
                    }

                    UpdateNotification($"Deneme #{requestCount}: Tarama hatasi: {ErrorTextFormatter.Clean(search.ErrorMessage)}");
                    await Task.Delay(TimeSpan.FromSeconds(intervalSeconds), token);
                    continue;
                }

                if (search.Slots.Count == 0)
                {
                    UpdateNotification($"Deneme #{requestCount}: Uygun slot bulunamadi. Tarama devam ediyor.");
                    await Task.Delay(TimeSpan.FromSeconds(intervalSeconds), token);
                    continue;
                }

                var first = search.Slots[0];
                if (ScanSettingsStore.GetNotifyEnabled())
                {
                    await TelegramClient.SendAsync(
                        ScanSettingsStore.GetTelegramBotToken(),
                        ScanSettingsStore.GetTelegramChatId(),
                        $"Uygun slot bulundu. Tarih: {first.BaslangicZamani} Doktor: {first.HekimAdi ?? "Bilinmiyor"} Kurum: {first.KurumAdi ?? "Bilinmiyor"}");
                }

                var book = await service.MakeAppointmentAsync(new BookAppointmentForm
                {
                    FkSlotId = first.Id,
                    FkCetvelId = first.FkCetvelId,
                    MuayeneYeriId = first.MuayeneYeriId,
                    BaslangicZamani = first.BaslangicZamani ?? string.Empty,
                    BitisZamani = first.BitisZamani ?? string.Empty,
                    AllowCancelAndRebook = true
                });

                if (book.Success)
                {
                    UpdateNotification($"Deneme #{requestCount}: Randevu alindi. Otomatik tarama durduruldu.");
                    if (ScanSettingsStore.GetNotifyEnabled())
                    {
                        await TelegramClient.SendAsync(
                            ScanSettingsStore.GetTelegramBotToken(),
                            ScanSettingsStore.GetTelegramChatId(),
                            $"Randevu alindi. Tarih: {first.BaslangicZamani} Doktor: {first.HekimAdi ?? "Bilinmiyor"} Kurum: {first.KurumAdi ?? "Bilinmiyor"}");
                    }

                    StopSelf();
                    return;
                }

                UpdateNotification($"Deneme #{requestCount}: Randevu alinamadi: {ErrorTextFormatter.Clean(book.Message)}");
                if (ScanSettingsStore.GetNotifyEnabled())
                {
                    await TelegramClient.SendAsync(
                        ScanSettingsStore.GetTelegramBotToken(),
                        ScanSettingsStore.GetTelegramChatId(),
                    $"Randevu alma denemesi basarisiz: {ErrorTextFormatter.Clean(book.Message)}");
                }
            }
            catch (TaskCanceledException)
            {
                return;
            }
            catch (Exception ex)
            {
                UpdateNotification($"Deneme #{requestCount}: Arka plan hatasi: {ErrorTextFormatter.Clean(ex.Message)}");
            }

            await Task.Delay(TimeSpan.FromSeconds(intervalSeconds), token);
        }
    }

    private static SlotSearchForm BuildSlotSearchForm()
    {
        return new SlotSearchForm
        {
            ProvinceId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyProvinceId, -1),
            DistrictId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyDistrictId, -1),
            ClinicId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyClinicId, -1),
            HospitalId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyHospitalId, -1),
            PlaceId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyPlaceId, -1),
            DoctorId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyDoctorId, -1),
            StartDate = ScanSettingsStore.GetDate(ScanSettingsStore.KeyStartDate, DateTime.Today).ToString("yyyy-MM-dd"),
            EndDate = ScanSettingsStore.GetDate(ScanSettingsStore.KeyEndDate, DateTime.Today).ToString("yyyy-MM-dd"),
            IncludedHours = ParseHours(ScanSettingsStore.GetString(ScanSettingsStore.KeyIncludedHours, string.Empty)),
            ExcludedHours = ParseHours(ScanSettingsStore.GetString(ScanSettingsStore.KeyExcludedHours, string.Empty))
        };
    }

    private static List<int> ParseHours(string raw)
    {
        if (string.IsNullOrWhiteSpace(raw))
        {
            return new List<int>();
        }

        return raw
            .Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries)
            .Select(x => int.TryParse(x, out var hour) ? hour : -1)
            .Where(x => x >= 0 && x <= 23)
            .Distinct()
            .ToList();
    }

    private Notification BuildNotification(string text)
    {
        var launchIntent = PackageManager?.GetLaunchIntentForPackage(PackageName!);
        var pendingFlags = PendingIntentFlags.UpdateCurrent;
        if (Build.VERSION.SdkInt >= BuildVersionCodes.M)
        {
            pendingFlags |= PendingIntentFlags.Immutable;
        }

        var pendingIntent = launchIntent is null
            ? null
            : PendingIntent.GetActivity(this, 10, launchIntent, pendingFlags);

        var builder = new NotificationCompat.Builder(this, ChannelId)
            .SetSmallIcon(Resource.Mipmap.appicon)
            .SetContentTitle("MHRS Otomatik Tarama")
            .SetContentText(text)
            .SetOngoing(true)
            .SetOnlyAlertOnce(true)
            .SetPriority((int)NotificationPriority.Default);

        if (pendingIntent != null)
        {
            builder.SetContentIntent(pendingIntent);
        }

        return builder.Build();
    }

    private void UpdateNotification(string text)
    {
        ScanSettingsStore.SetAutoLastStatus(text);
        var manager = NotificationManagerCompat.From(this);
        manager.Notify(NotificationId, BuildNotification(text));
    }

    private void CreateNotificationChannel()
    {
        if (Build.VERSION.SdkInt < BuildVersionCodes.O)
        {
            return;
        }

        var channel = new NotificationChannel(ChannelId, "MHRS Arka Plan Tarama", NotificationImportance.Default)
        {
            Description = "Otomatik slot tarama ve randevu alma servisi"
        };

        var notificationManager = (NotificationManager?)GetSystemService(NotificationService);
        notificationManager?.CreateNotificationChannel(channel);
    }
}
