using Microsoft.Extensions.Logging;
using ScheduleListUI.Services;
using ScheduleListUI.Validations;
using ScheduleListUI.Views;
using CommunityToolkit.Maui;
using ScheduleListUI.ViewModels;
using Plugin.Maui.Biometric;
namespace ScheduleListUI;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
            .UseMauiApp<App>().UseMauiCommunityToolkit()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});

#if DEBUG
		builder.Logging.AddDebug();
#endif //registrando os serviçõs client
        builder.Services.AddHttpClient();
		builder.Services.AddSingleton<HomePage>();
		builder.Services.AddSingleton<Recados>();
        builder.Services.AddSingleton<Menu>();
         builder.Services.AddSingleton<MuraldeEventosPage>();
        builder.Services.AddTransient<LoginPage>();
       
		builder.Services.AddSingleton<IBiometric>(BiometricAuthenticationService.Default);

        builder.Services.AddSingleton<ApiServices>();
		builder.Services.AddSingleton<ScheduleListView>();
        builder.Services.AddSingleton<ISQLiteDbServive, SQLiteDbServive>();
		builder.Services.AddTransient<IAuthService, AuthService>();


		builder.Services.AddSingleton<LoginGoogleViewModel>();


        return builder.Build();
	}
}
