using Android.Content;
using Android.OS;
using MHRSMobileApp.Services;

namespace MHRSMobileApp.Platforms.Android;

[BroadcastReceiver(Enabled = true, Exported = true)]
[global::Android.App.IntentFilter(new[]
{
    global::Android.Content.Intent.ActionBootCompleted,
    global::Android.Content.Intent.ActionMyPackageReplaced
})]
public class BackgroundBootReceiver : BroadcastReceiver
{
    public override void OnReceive(Context? context, Intent? intent)
    {
        if (context is null)
        {
            return;
        }

        if (!ScanSettingsStore.IsAutoScanRunning())
        {
            return;
        }

        var serviceIntent = new Intent(context, typeof(BackgroundScanService));
        serviceIntent.SetAction(BackgroundScanService.ActionStart);
        serviceIntent.PutExtra(
            BackgroundScanService.ExtraIntervalSeconds,
            ScanSettingsStore.GetInt(ScanSettingsStore.KeyAutoIntervalSeconds, 30));

        if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
        {
            context.StartForegroundService(serviceIntent);
        }
        else
        {
            context.StartService(serviceIntent);
        }
    }
}
