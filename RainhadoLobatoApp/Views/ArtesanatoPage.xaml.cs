using ScheduleListUI.Services;

namespace ScheduleListUI.Views;

public partial class ArtesanatoPage : ContentPage
{
    private readonly ApiServices _services;
    private ISQLiteDbServive _sQLiteDbServive;
    public ArtesanatoPage(ApiServices services, ISQLiteDbServive sQLiteDbServive)
    {
        Shell.SetTabBarIsVisible(this, false);

        InitializeComponent();
        _services = services;
        _sQLiteDbServive = sQLiteDbServive;
    }

    private async void Tapart_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new ArtesaosPage(_services, _sQLiteDbServive));
    }

    private async void Arrow1_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ArtesaosPage(_services, _sQLiteDbServive));

    }

    private async void TaoProf_Tapped(object sender, TappedEventArgs e)
    {
        await Launcher.OpenAsync("https://wa.me/5571987604964");
    }
}