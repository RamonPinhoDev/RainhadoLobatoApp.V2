using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Gms.Auth.Api.SignIn;
using Android.OS;
using OneSignalSDK.DotNet;
using OneSignalSDK.DotNet.Core;
using OneSignalSDK.DotNet.Core.Debug;
using System.Diagnostics;
namespace ScheduleListUI;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{

    public static event EventHandler<(bool Success, GoogleSignInAccount account)> ResultGoogleAuth;

   
    protected override async void OnActivityResult(int requestCode, Result resultCode, Intent data)
    {

        if (requestCode == 9001)
        {
            try
            {
                //var currentAccount = await GoogleSignIn.GetSignedInAccountFromIntentAsync(data);

                //ResultGoogleAuth.Invoke(this, (currentAccount.Email != null, currentAccount));
            }
            catch (Exception ex)
            {
                ResultGoogleAuth.Invoke(this, (false, null));
            }


        }
    }

    protected override void OnCreate(Bundle savedInstanceState)
    {
       
        base.OnCreate(savedInstanceState);

     
        //new GoogleAuthService(t);
        // Enable verbose OneSignal logging to debug issues if needed.
        OneSignal.Debug.LogLevel = LogLevel.VERBOSE;

        // OneSignal Initialization
        OneSignal.Initialize("d03028bf-0335-499d-8766-0cc782b39187");

       // OneSignal.Initialize("750222c8-24eb-4275-b547-104c5652c5ab"); // teste
        // RequestPermissionAsync will show the notification permission prompt.
        // We recommend removing the following code and instead using an In-App Message to prompt for notification permission (See step 5)
        OneSignal.Notifications.RequestPermissionAsync(true);




    }
}
