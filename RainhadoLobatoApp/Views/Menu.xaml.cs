using ScheduleListUI.Services;
using System.IO;

namespace ScheduleListUI.Views;

public partial class Menu : ContentPage
{

    private ISQLiteDbServive _sQLiteDbServive;

    private readonly ApiServices _services;
    private readonly IAuthService _authService;

    public Menu(ApiServices services, ISQLiteDbServive sQLiteDbServive, IAuthService authService)
    {
        InitializeComponent();
        _authService = authService;
        _services = services;
        LblNomeUsuario.Text = Preferences.Get("usuarionome", string.Empty);
        _sQLiteDbServive = sQLiteDbServive;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        CarregarImagemPerfil();
    }

    private void CarregarImagemPerfil()
    {
        var caminhoImagem = Preferences.Get("ImagemPerfilCaminho", string.Empty);

        if (!string.IsNullOrEmpty(caminhoImagem) && File.Exists(caminhoImagem))
        {
            ImgBtnPerfil.Source = ImageSource.FromFile(caminhoImagem);
        }
        else
        {
            ImgBtnPerfil.Source = "profile.png";
        }
    }
   


   

    private async void ImgBtnPerfil_Clicked(object sender, EventArgs e)
    {
        try
        {
            var imagemArray = await SelecionarImagemAsync();
            if (imagemArray == null)
            {
                await DisplayAlert("Erro", "Não foi possível carregar a imagem", "Ok");
                return;
            }

            ImgBtnPerfil.Source = ImageSource.FromStream(() => new MemoryStream(imagemArray));

            var caminhoImagem = await UploadFotoUsuario(imagemArray);

            if (!string.IsNullOrEmpty(caminhoImagem))
            {
                Preferences.Set("ImagemPerfilCaminho", caminhoImagem); // Salva o caminho da imagem local
                await DisplayAlert("", "Imagem enviada com sucesso", "Ok");
            }
            else
            {
                await DisplayAlert("Erro", "Ocorreu um erro desconhecido", "Ok");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Erro", $"Ocorreu um erro inesperado: {ex.Message}", "Ok");
        }
       

    }




    private async Task<string> UploadFotoUsuario(byte[] imagemArray)
    {
        try
        {
            var nomeArquivo = $"{Guid.NewGuid()}.jpg";
            var caminho = Path.Combine(FileSystem.AppDataDirectory, nomeArquivo);

            using (var stream = new FileStream(caminho, FileMode.Create, FileAccess.Write))
            {
                await stream.WriteAsync(imagemArray, 0, imagemArray.Length);
            }

            return caminho; // Retorna o caminho do arquivo salvo
        }
        catch
        {
            return string.Empty;
        }
    }



    private async void TapNossaHistoria_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new NossaHistoria());
    }

    private async void TapContato_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new Contato());
    }

    private async void BtnLogout_Clicked(object sender, EventArgs e)
    {
        Preferences.Set("accesstoken", string.Empty);
     
        await Navigation.PushAsync(new LoginPage(_services, _authService));


    }

   


    private async Task<byte[]?> SelecionarImagemAsync()
    {
        try
        {
            var arquivo = await MediaPicker.PickPhotoAsync();
            if (arquivo == null) return null;
            using (var stream = await arquivo.OpenReadAsync())
            using (var memoryStream = new MemoryStream())
            {
                await stream.CopyToAsync(memoryStream);
                return memoryStream.ToArray();
            }
        }
        catch (FeatureNotSupportedException)
        {
            await DisplayAlert("Erro", "A Funcionalidade não é suportada no dispositivo", "Ok");
        }
        catch (PermissionException)
        {
            await DisplayAlert("Erro", "Permissões não concedida para acessar a camera ou galeria", "Ok");

        }
        catch (Exception ex)
        {

            await DisplayAlert("Erro", "Permissões não concedidas para acessar  a camera  ou galeria", "Ok");

        }

        return null;

            ;

    }

    private async void TapTalento_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new TalentosPage(_services, _sQLiteDbServive));
    }
}