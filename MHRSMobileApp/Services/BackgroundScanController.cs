#if ANDROID
using Android.Content;
using Android.OS;
using MHRSMobileApp.Platforms.Android;

namespace MHRSMobileApp.Services;

public static class BackgroundScanController
{
    public static void Start(int intervalSeconds)
    {
        var context = Android.App.Application.Context;
        var intent = new Intent(context, typeof(BackgroundScanService));
        intent.SetAction(BackgroundScanService.ActionStart);
        intent.PutExtra(BackgroundScanService.ExtraIntervalSeconds, intervalSeconds);
        if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
        {
            context.StartForegroundService(intent);
        }
        else
        {
            context.StartService(intent);
        }
    }

    public static void Stop()
    {
        var context = Android.App.Application.Context;
        var intent = new Intent(context, typeof(BackgroundScanService));
        intent.SetAction(BackgroundScanService.ActionStop);
        context.StartService(intent);
    }
}
#else
namespace MHRSMobileApp.Services;

public static class BackgroundScanController
{
    public static void Start(int intervalSeconds) { }
    public static void Stop() { }
}
#endif
