
using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class DizimoPage : ContentPage
{
    private readonly DizimosViewModel _viewModel;

    private int currentIndex = 0;
    private bool isAutoScrolling = true;
    public DizimoPage()
    {
        Shell.SetTabBarIsVisible(this, false);
        InitializeComponent();
        _viewModel = new DizimosViewModel();
        BindingContext = _viewModel;

    }


    protected override async void OnAppearing()
    {
        base.OnAppearing();
       


    }
    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        isAutoScrolling = false;
    }

    
    
}