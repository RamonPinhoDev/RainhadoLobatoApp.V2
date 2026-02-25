

using System.Collections.Generic;
using System.Linq;

using Microsoft.Maui.Controls;
using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class HomePage : ContentPage
{
    private readonly ApiServices _services;
    private readonly HomeViewModel _viewModel;

    private int currentIndex = 0;
    private bool isAutoScrolling = true;
    private  ISQLiteDbServive _destaqueRepository;


    public HomePage( ApiServices services, ISQLiteDbServive destaqueServive)
    {
        _destaqueRepository= destaqueServive;
        _services = services;
        InitializeComponent();
         _viewModel = new HomeViewModel(_services, _destaqueRepository);

        BindingContext = _viewModel;
       LblNomeUsuario.Text = "Bem-vindo, " + Preferences.Get("usuarionome", string.Empty);


       
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        isAutoScrolling = true;
        StartAutoScroll();
        await _viewModel.CarregarDestaquesAsync();


    }
    protected override async void OnDisappearing()
    {
        base.OnDisappearing();
        isAutoScrolling = false;
        await _viewModel.RefreshDestaquesAsync();
    }

    private async void StartAutoScroll()
    {
        while (isAutoScrolling)
        {
            await Task.Delay(2000);
            if (carouselView.ItemsSource is IEnumerable<object> enumerable)
            {
                var items = enumerable.ToList();
                if (items.Count > 0)
                {
                    currentIndex = (currentIndex + 1) % items.Count;
                    carouselView.Position = currentIndex;
                }
            }

        }
    }
}
