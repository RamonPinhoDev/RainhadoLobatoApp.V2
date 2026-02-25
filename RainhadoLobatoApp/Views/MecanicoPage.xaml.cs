using ScheduleListUI.Services;
namespace ScheduleListUI.Views;

public partial class MecanicoPage : ContentPage
{
    private readonly ApiServices _services;
    private ISQLiteDbServive _sQLiteDbServive;

    public MecanicoPage(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
    {
        _sQLiteDbServive = sQLiteDbServive;

        Shell.SetTabBarIsVisible(this, false);

        InitializeComponent();
        _services = apiServices;
    }

    private async void TaoProf_Tapped(object sender, TappedEventArgs e)
    {
        await Launcher.OpenAsync("https://wa.me/5571987604964");
    }

    private async void TapBarb1_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new BikePage(_services, _sQLiteDbServive));

    }

    private async void Arrow1_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new BikePage(_services, _sQLiteDbServive));
    }

    private async void TapBarb2_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new CarroPage(_services, _sQLiteDbServive));
        
    }

    private async void Arrow2_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new CarroPage(_services, _sQLiteDbServive));

    }

    private async void TapBarb3_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new MotoPage(_services, _sQLiteDbServive));
        
    }

    private async void Arrow3_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MotoPage(_services, _sQLiteDbServive));

    }
}