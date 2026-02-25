using ScheduleListUI.Services;
using ScheduleListUI.Validations;
using ScheduleListUI.ViewModels;
using System.ComponentModel.Design;
using System.Text.RegularExpressions;

namespace ScheduleListUI.Views;

public partial class inscricaoPage : ContentPage
{
    private readonly ApiServices _apiservice;
    private readonly IAuthService _authService;

    public inscricaoPage(ApiServices services, IAuthService authService)
    {
        Shell.SetTabBarIsVisible(this, false);
        InitializeComponent();
        _apiservice = services;
        _authService = authService;
    }

    private async void BtnSignup_Clicked(object sender, EventArgs e)
    {

        this.IsBusy = true;
        this.IsEnabled = false;

        if (!string.IsNullOrEmpty(EntName.Text) && EntName.Text.Length >= 3 && !string.IsNullOrEmpty(EntEmail.Text) && 
            Regex.IsMatch(EntEmail.Text, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$") && !string.IsNullOrEmpty(EntPassword.Text) &&
            EntPassword.Text.Length >= 8 && Regex.IsMatch(EntPassword.Text, @"[a-zA-Z]") && Regex.IsMatch(EntPassword.Text, @"\d")&& 
            EntPassword.Text == EntPassword2.Text)
            
        {
            var response = await _apiservice.RegistrarUsuarios(EntName.Text, EntEmail.Text, EntPassword.Text);
            if (!response.HasError)
            {
                this.IsBusy = false;
                this.IsEnabled = true;
                await DisplayAlert("Aviso", "Sua conta foi criada com sucesso", "Ok");
                await Navigation.PushAsync(new LoginPage( _apiservice, _authService));
            }
            else
            {
                this.IsBusy = false;
                this.IsEnabled = true;

                await DisplayAlert("Erro", "Algo de errado!!!", "Cancelar");
            }
        }
        else
        {
            this.IsBusy = false;
            this.IsEnabled = true;
            if (string.IsNullOrEmpty(EntName.Text))
            {
                await DisplayAlert("Erro", "Por favor, informe o seu nome.", "Cancelar");
            }

            if (EntName.Text.Length < 3)
            {
                await DisplayAlert("Erro", "Por favor, informe um nome válido.", "Cancelar");
            }

            if (string.IsNullOrEmpty(EntEmail.Text))
            {
                await DisplayAlert("Erro", "Por favor, informe um email.", "Cancelar");
            }

            if (!Regex.IsMatch(EntEmail.Text, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"))
            {
                await DisplayAlert("Erro", "Por favor, informe um email válido.", "Cancelar");
            }

            if (string.IsNullOrEmpty(EntPassword.Text))
            {
                await DisplayAlert("Erro", "Por favor, informe a senha.", "Cancelar");
            }

            if (EntPassword.Text.Length < 8 || !Regex.IsMatch(EntPassword.Text, @"[a-zA-Z]") || !Regex.IsMatch(EntPassword.Text, @"\d"))
            {
                await DisplayAlert("Erro", "A senha deve conter pelo menos 8 caracteres, incluindo letras e números.", "Cancelar");
            }
        }
        if (EntPassword.Text != EntPassword2.Text) 
        {
            await DisplayAlert("Erro", "As senhas nao coincidem.", "Cancelar");
        }
        



    }





    private async void TapLogin_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new LoginPage( _apiservice, _authService));
    }
}