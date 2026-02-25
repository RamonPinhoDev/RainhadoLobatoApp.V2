using CommunityToolkit.Maui.Views;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;
using System.Collections.ObjectModel;

namespace ScheduleListUI.Views;

public partial class ComentarioPage : Popup
{
    private readonly EventosFotosViewModel _viewModel;
    private readonly ApiServices _apiServices;
    private ISQLiteDbServive _MuralRepository;
    private int _id;
    public ComentarioPage(int id, ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
    {
        InitializeComponent();
        _id = id;
       
        _apiServices = apiServices;
        _MuralRepository = sQLiteDbServive;
        _viewModel = new EventosFotosViewModel(_apiServices, _MuralRepository);
        BindingContext = _viewModel;
        carregar(_id);

    }

    private async void BtnComentar_Clicked(object sender, EventArgs e)
    {
        try
        {

            var coment = new Comentario
            {

                UsuarioId = Preferences.Get("Usuarioid", 0),
                EventosFotosId = _id,
                Mensagem = EntComent.Text,
                UsuarioNome = Preferences.Get("usuarionome", string.Empty),
                //ImgUrl = Preferences.Get("usuarioimg", string.Empty) ?? "perfil.svg",
                ImgUrl = "perfil.svg",

                DataComentario = DateTime.Now
            };

            if(!String.IsNullOrWhiteSpace(coment.Mensagem)) { 
            await _viewModel.AddCommentAsync(coment);
            await Application.Current.MainPage.DisplayAlert("Sucesso", "Comentário adicionado com sucesso.", "OK");
            }
        }
        catch (Exception ex)
        {
            

            Console.WriteLine(ex.Message);
            await Application.Current.MainPage.DisplayAlert("Erro", "Erro ao adcionar omentário.", "Fechar");
        }


    }

    private async void carregar(int id)
    {
        try
        {
            await _viewModel.CarregarCommentAsync(id);
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
    

}














