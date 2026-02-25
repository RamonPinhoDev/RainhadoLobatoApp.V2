
using Microsoft.Maui.Controls;
using OneSignalSDK.DotNet;
using OneSignalSDK.DotNet.Core;
using OneSignalSDK.DotNet.Core.Debug;
using ScheduleListUI.Services;
using ScheduleListUI.Validations;
using ScheduleListUI.ViewModels;
using ScheduleListUI.Views;

namespace ScheduleListUI;


    public partial class App : Application
    {
    ISQLiteDbServive _sQLiteDbServive;
    LoginGoogleViewModel _loginGoogleViewModel;
    private readonly IAuthService _authService;
    private readonly ApiServices _services;
    public App(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive, IAuthService authService)
    {
        InitializeComponent();
        Application.Current.UserAppTheme = AppTheme.Light;
        _services = apiServices;

        _sQLiteDbServive = sQLiteDbServive;

        //https://documentation.onesignal.com/docs/net-sdk-setup


        // Enable verbose OneSignal logging to debug issues if needed.
        OneSignal.Debug.LogLevel = LogLevel.VERBOSE;

        // OneSignal Initialization
         OneSignal.Initialize("d03028bf-0335-499d-8766-0cc782b39187");

        //OneSignal.Initialize("750222c8-24eb-4275-b547-104c5652c5ab"); // teste


        // RequestPermissionAsync will show the notification permission prompt.
        // We recommend removing the following code and instead using an In-App Message to prompt for notification permission (See step 5)
        OneSignal.Notifications.RequestPermissionAsync(true);



        SetMainPage();
        _authService = authService;


        // MainPage = new AppShell();
        //configura inicialização
        //MainPage = new NavigationPage(new LoginPage(_services));


    }

    private async void SetMainPage()
    {
        var accessToken = Preferences.Get("accesstoken", string.Empty);
        if (string.IsNullOrEmpty(accessToken))
        {
            MainPage = new NavigationPage(new LoginPage(_services, _authService));
            return;

        }
        else
        {

            MainPage = new AppShell();
        }




       
    }

   


    }


