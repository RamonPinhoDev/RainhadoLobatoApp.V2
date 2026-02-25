using CommunityToolkit.Maui.Views;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class MuraldeEventosPage : ContentPage
{
    private readonly MuraldeEventosViewModel _viewModel;
    private readonly ApiServices _apiServices;
    private ISQLiteDbServive _sQLiteDbServive;
    public MuraldeEventosPage(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
    {
        InitializeComponent();
        _apiServices = apiServices;
        _sQLiteDbServive = sQLiteDbServive;
        _viewModel = new MuraldeEventosViewModel(_apiServices, _sQLiteDbServive);
        BindingContext = _viewModel;
        
       
    }

    override protected async void OnAppearing()
    {
        var popup = new Aguarde();
        this.ShowPopup(popup);
        base.OnAppearing();
        await _viewModel.CarregarEventosAsync();
        popup.Close();
    }


    private async void EvenSingle_SelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        var m = e.CurrentSelection.FirstOrDefault() as MuraldeEventos; 
        Preferences.Set("MuraldeEventosId", m.MuraldeEventosId);
        await Navigation.PushAsync(new EventosFotosPage(_apiServices, _sQLiteDbServive, m.MuraldeEventosId));
        
    }
}