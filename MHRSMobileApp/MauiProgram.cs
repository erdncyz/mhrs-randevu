using MHRS_OtomatikRandevu.Services;
using Microsoft.Extensions.Logging;
using MHRSMobileApp.Services;

namespace MHRSMobileApp;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});

		ClientService.NetworkLogHook = NetworkLogStore.Append;

#if DEBUG
		builder.Logging.AddDebug();
#endif

		return builder.Build();
	}
}
