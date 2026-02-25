using ScheduleListUI.Models;
using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;
namespace ScheduleListUI.Views;

public partial class BikePage : ContentPage
{
    private readonly ProfissionalViewModel _viewModel;
    private readonly ApiServices _apiServices;
    private ISQLiteDbServive _sQLiteDbServive;
    public BikePage(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
    {
        this.IsBusy = false;
        _sQLiteDbServive = sQLiteDbServive;
        _apiServices = apiServices;
        Shell.SetTabBarIsVisible(this, false);
        _viewModel = new ProfissionalViewModel(_apiServices, _sQLiteDbServive);
        BindingContext = _viewModel;
        InitializeComponent();
    }



    private void BtnEsquerda_Clicked(object sender, EventArgs e)
    {

        int page = int.Parse(Preferences.Get("PagePlus", string.Empty));
        if (page > 1)
        {
            page -= 1;
        }
        Preferences.Set("PagePlus", page.ToString());
        string profissionalTipo = "Bicicleta";
        string categoria = "Mecanico";
        var response = _viewModel.CarregarProfissionaisArrowAsync(page, profissionalTipo, categoria);
        if (response != null)
        {
            Preferences.Set("PagePlus", page.ToString());
            LebelCountPage.Text = Preferences.Get("PagePlus", string.Empty);
        }


    }

    private void BtnDireita_Clicked(object sender, EventArgs e)
    {
        int page = int.Parse(Preferences.Get("PagePlus", string.Empty));
        int Total = int.Parse(Preferences.Get("itensTotal", string.Empty));
        if (Total > 0)
        {

            page += 1;

            Preferences.Set("PagePlus", page.ToString());
            LebelCountPage.Text = Preferences.Get("PagePlus", string.Empty);

            string profissionalTipo = "Bicicleta";
            string categoria = "Mecanico";
            var response = _viewModel.CarregarProfissionaisArrowAsync(page, profissionalTipo, categoria);
        }




        //else
        //{
        //    page -= 1;

        //    Preferences.Set("PagePlus", page.ToString());

        //}
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        int p = 1;
        Preferences.Set("PagePlus", p.ToString());
        try
        {
            int page = 1;
            string profissionalTipo = "Bicicleta";
            string categoria = "Mecanico";
            await _viewModel.CarregarProfissionaisAsync(page, profissionalTipo, categoria);
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }
    }

    protected async override void OnDisappearing()
    {
        int page = 1;
        string profissionalTipo = "Bicicleta";
        string categoria = "Mecanico";
        base.OnDisappearing();
        Preferences.Set("PagePlus", string.Empty);
        await _viewModel.RefreshPrifissionaisAsync(page, profissionalTipo, categoria);


    }

    private async void searchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        this.IsBusy = true;
        int page = 1;
        string profissionalTipo = "Bicicleta";
        string categoria = "Mecanico";
        string nome = e.NewTextValue.ToString();
        if (String.IsNullOrEmpty(e.NewTextValue.ToString()))
        {
            await _viewModel.CarregarProfissionaisAsync(page, profissionalTipo, categoria);
        }
        else
        {
            await _viewModel.CarregarProfissionaisByNameAsync(page, profissionalTipo, categoria, nome);
        }

        this.IsBusy = false;
    }

    private async void ProfSingle_ItemSelected(object sender, SelectedItemChangedEventArgs e)
    {
        RefreshView refreshView = new RefreshView();
        // ProfissionalModel o = new ProfissionalModel();
        ProfissionalModel o = (ProfissionalModel)e.SelectedItem;

        await Launcher.OpenAsync(o.Telefone);
        int page = 1;
        string profissionalTipo = "Bicicleta";
        string categoria = "Mecanico";
        await _viewModel.CarregarProfissionaisAsync(page, profissionalTipo, categoria);


    }
}