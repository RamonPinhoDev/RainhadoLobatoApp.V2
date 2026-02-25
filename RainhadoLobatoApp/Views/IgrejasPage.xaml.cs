using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class IgrejasPage : ContentPage
{
    
    public IgrejasPage()
	{
        Shell.SetTabBarIsVisible(this, false);
        InitializeComponent();
		BindingContext = new IgrejaViewModel();

    }
}