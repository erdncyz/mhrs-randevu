using System.Linq;
using System.Text.Json;

namespace MHRSMobileApp.Services;

public static class ScanSettingsStore
{
    public const string KeyToken = "scan.token";
    public const string KeyProvinceId = "scan.province";
    public const string KeyDistrictId = "scan.district";
    public const string KeyClinicId = "scan.clinic";
    public const string KeyHospitalId = "scan.hospital";
    public const string KeyPlaceId = "scan.place";
    public const string KeyDoctorId = "scan.doctor";
    public const string KeyStartDate = "scan.startDate";
    public const string KeyEndDate = "scan.endDate";
    public const string KeyIncludedHours = "scan.includedHours";
    public const string KeyExcludedHours = "scan.excludedHours";
    public const string KeyNotifyEnabled = "notify.enabled";
    public const string KeyTelegramBotToken = "notify.telegram.botToken";
    public const string KeyTelegramChatId = "notify.telegram.chatId";
    public const string KeyAutoIntervalSeconds = "scan.auto.intervalSeconds";
    public const string KeyAutoIntervalUnit = "scan.auto.intervalUnit";
    public const string KeyAutoBookEnabled = "scan.auto.bookEnabled";
    public const string KeyAutoRunning = "scan.auto.running";
    public const string KeyAutoRequestCount = "scan.auto.requestCount";
    public const string KeyAutoLastStatus = "scan.auto.lastStatus";

    public static string GetToken() => NormalizeToken(GetString(KeyToken, string.Empty));

    public static void SetToken(string token)
    {
        SetString(KeyToken, NormalizeToken(token));
    }

    public static string NormalizeToken(string? raw)
    {
        if (string.IsNullOrWhiteSpace(raw))
        {
            return string.Empty;
        }

        var trimmed = raw.Trim();
        if (trimmed.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase))
        {
            trimmed = trimmed[7..].Trim();
        }

        if (trimmed.Count(c => c == '.') == 2)
        {
            return trimmed;
        }

        try
        {
            using var doc = JsonDocument.Parse(trimmed);
            if (doc.RootElement.ValueKind == JsonValueKind.Object)
            {
                foreach (var key in new[] { "token", "jwt", "accessToken", "access_token", "Token", "Jwt" })
                {
                    if (doc.RootElement.TryGetProperty(key, out var tokenElement))
                    {
                        var tokenValue = tokenElement.GetString();
                        if (!string.IsNullOrWhiteSpace(tokenValue))
                        {
                            var candidate = tokenValue.Trim();
                            if (candidate.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase))
                            {
                                candidate = candidate[7..].Trim();
                            }

                            if (candidate.Count(c => c == '.') == 2)
                            {
                                return candidate;
                            }
                        }
                    }
                }
            }
        }
        catch
        {
            // Invalid JSON input; fall back to empty so stale/invalid token is not used.
        }

        return string.Empty;
    }

    public static bool GetNotifyEnabled() => Preferences.Default.Get(KeyNotifyEnabled, false);

    public static string GetTelegramBotToken() => GetString(KeyTelegramBotToken, string.Empty);

    public static string GetTelegramChatId() => GetString(KeyTelegramChatId, string.Empty);

    public static void SetNotify(bool enabled, string botToken, string chatId)
    {
        Preferences.Default.Set(KeyNotifyEnabled, enabled);
        SetString(KeyTelegramBotToken, botToken ?? string.Empty);
        SetString(KeyTelegramChatId, chatId ?? string.Empty);
    }

    public static int GetInt(string key, int fallback) => Preferences.Default.Get(key, fallback);

    public static void SetInt(string key, int value)
    {
        Preferences.Default.Set(key, value);
    }

    public static string GetString(string key, string fallback) => Preferences.Default.Get(key, fallback);

    public static void SetString(string key, string value)
    {
        Preferences.Default.Set(key, value);
    }

    public static DateTime GetDate(string key, DateTime fallback)
    {
        var raw = GetString(key, string.Empty);
        return DateTime.TryParse(raw, out var dt) ? dt : fallback;
    }

    public static void SetDate(string key, DateTime value)
    {
        SetString(key, value.ToString("yyyy-MM-dd"));
    }

    public static bool GetAutoBookEnabled() => Preferences.Default.Get(KeyAutoBookEnabled, true);

    public static string GetAutoIntervalUnit() => Preferences.Default.Get(KeyAutoIntervalUnit, "Saniye");

    public static void SetAutoScanConfig(int intervalSeconds, string intervalUnit, bool autoBook)
    {
        Preferences.Default.Set(KeyAutoIntervalSeconds, intervalSeconds);
        Preferences.Default.Set(KeyAutoIntervalUnit, intervalUnit);
        Preferences.Default.Set(KeyAutoBookEnabled, autoBook);
    }

    public static int GetAutoRequestCount() => Preferences.Default.Get(KeyAutoRequestCount, 0);

    public static void SetAutoRequestCount(int count)
    {
        Preferences.Default.Set(KeyAutoRequestCount, count);
    }

    public static string GetAutoLastStatus() => Preferences.Default.Get(KeyAutoLastStatus, string.Empty);

    public static void SetAutoLastStatus(string status)
    {
        Preferences.Default.Set(KeyAutoLastStatus, status ?? string.Empty);
    }

    public static bool IsAutoScanRunning() => Preferences.Default.Get(KeyAutoRunning, false);

    public static void SetAutoScanRunning(bool running)
    {
        Preferences.Default.Set(KeyAutoRunning, running);
    }

    public static void Clear()
    {
        Preferences.Default.Clear();
    }
}
