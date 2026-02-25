using ScheduleListUI.Services;

namespace ScheduleListUI.Views;

public partial class CondutorPage : ContentPage
{
    private readonly ApiServices _services;
    private ISQLiteDbServive _sQLiteDbServive;
    public CondutorPage(ApiServices services, ISQLiteDbServive sQLiteDbServive)
    {
        Shell.SetTabBarIsVisible(this, false);

        InitializeComponent();
        _services = services;
        _sQLiteDbServive = sQLiteDbServive;
    }

    private async void Arrow1_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MotoristaPage(_services, _sQLiteDbServive));

    }

    private async void Tapmoto_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new MotoristaPage(_services, _sQLiteDbServive));

    }

    private async void Taptaxi_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new MotoTaxiPage(_services, _sQLiteDbServive));

    }

    private async void Arrow2_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MotoTaxiPage(_services, _sQLiteDbServive));

    }

    private async void TaoProf_Tapped(object sender, TappedEventArgs e)
    {
        await Launcher.OpenAsync("https://wa.me/5571987604964");

    }
}