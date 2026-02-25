using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class Parocos : ContentPage
{
    public Parocos()
    {
        Shell.SetTabBarIsVisible(this, false);
        InitializeComponent();
        BindingContext = new ParocosViewModel();
    }
}