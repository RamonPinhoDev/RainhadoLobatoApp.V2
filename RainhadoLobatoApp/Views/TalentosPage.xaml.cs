using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class TalentosPage : ContentPage
{
    private readonly ApiServices _apiServices;
    private readonly TalentosViewModel _viewModel;

    private ISQLiteDbServive _sQLiteDbServive;


    public TalentosPage(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
    {
        _sQLiteDbServive = sQLiteDbServive;

        _apiServices = apiServices;
        Shell.SetTabBarIsVisible(this, false);
        _viewModel = new TalentosViewModel(_apiServices, _sQLiteDbServive);
        BindingContext = _viewModel;
        InitializeComponent();
        
    }
}