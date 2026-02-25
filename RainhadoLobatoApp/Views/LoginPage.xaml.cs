
using Plugin.Maui.Biometric;
using ScheduleListUI.Services;
using ScheduleListUI.Validations;
using ScheduleListUI.ViewModels;
namespace ScheduleListUI.Views;


public partial class LoginPage : ContentPage
{
    private readonly ApiServices _apiServices;
    private ISQLiteDbServive _sQLiteDbServive;
    private readonly IAuthService _authService;



    LoginGoogleViewModel _viewModel;
    public LoginPage(ApiServices apiServices, IAuthService authService)
    {
        authService = _authService;
        this.IsBusy = false;
        NavigationPage.SetHasBackButton(this, false);
        Shell.SetTabBarIsVisible(this, false);
        InitializeComponent();
        _apiServices = apiServices;
        _viewModel = new LoginGoogleViewModel(_authService);

    }



    protected override bool OnBackButtonPressed()
    {

        return true;
    }
    private async void BtnSignIn_Clicked(object sender, EventArgs e)
    {
        this.IsBusy = true;
        this.IsEnabled = false;

        if (string.IsNullOrEmpty(EntEmail.Text))
        {
            this.IsBusy = false;
            this.IsEnabled = true;
            await DisplayAlert("Erro", "Informe o email", "Cancelar");
            return;
        }
        if (string.IsNullOrEmpty(EntPassword.Text))
        {
            this.IsBusy = false;
            this.IsEnabled = true;
            await DisplayAlert("Erro", "Informe o senha", "Cancelar");
            return;
        }

        var response = await _apiServices.Login(EntEmail.Text, EntPassword.Text);
        if (!response.HasError)
        {
            Application.Current!.MainPage = new AppShell();
        }
        else
        {
            this.IsBusy = false;
            this.IsEnabled = true;
            await DisplayAlert("Erro", "Algo deu errado: senha ou e-mail incorretos", "Cancelar");
        }
    }

    private async void TapRegister_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new inscricaoPage(_apiServices, _authService));
    }

    private async void LoginGoogle_Clicked(object sender, EventArgs e)
    {

        await _viewModel.Login();
    }

    private async void TapResetSenha_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new RedefinirSenha());

    }



    private async void BtnBio_Clicked(object sender, EventArgs e)
    {
        this.IsBusy = true;
        this.IsEnabled = false;
        var id = Preferences.Get("Usuarioid", 0);

        var result = await BiometricAuthenticationService.Default.AuthenticateAsync(new AuthenticationRequest()
        {
            Title = "Autenticação Biométrica",
            AllowPasswordAuth = true,
            NegativeText = "Cancelar"

        }, CancellationToken.None);

        var response = await _apiServices.LoginBio(id);

        if (id == 0)
        {
            this.IsBusy = false;
            this.IsEnabled = true;
            await DisplayAlert("Erro", "Nenhum usuário biométrico encontrado. Faça login com e-mail e senha primeiro.", "Cancelar");

        }
        if (result.Status == BiometricResponseStatus.Success && !response.HasError)
        {
            // entra no Shell
            Application.Current!.MainPage = new AppShell();
        }
        else
        {
            this.IsBusy = false;
            this.IsEnabled = true;
            await DisplayAlert("Erro", "Autenticação biométrica falhou", "Cancelar");
        }
    }



}