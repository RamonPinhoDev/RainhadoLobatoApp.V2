using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;
using CommunityToolkit.Maui.Views;
using System.Diagnostics;


namespace ScheduleListUI.Views;

public partial class Recados : ContentPage
{
    private ISQLiteDbServive _sQLiteDbServive;
    private readonly RecadoViewModel _viewModel;
    private ApiServices _apiServices;
    public Recados(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
	{
        _sQLiteDbServive = sQLiteDbServive;
        _apiServices = apiServices;
        InitializeComponent();

        _viewModel = new RecadoViewModel(_apiServices, _sQLiteDbServive);
        BindingContext = _viewModel;
        
    }

   
    protected override async void OnAppearing()
    {



        base.OnAppearing();
        await _viewModel.CarregarRecadosSQLiteAsync();
        var popup = new Aguarde();
        this.ShowPopup(popup);
         //await this.ShowPopupAsync(popup);
        await _viewModel.CarregarRecadosAsync();
         popup.Close();


    }

    protected override async void OnDisappearing()
    {
        
        base.OnDisappearing();
        await _viewModel.RefreshRecadosAsync();

    }
}