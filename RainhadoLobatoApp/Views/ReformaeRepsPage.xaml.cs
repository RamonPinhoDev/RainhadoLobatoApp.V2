using ScheduleListUI.Services;

namespace ScheduleListUI.Views;

public partial class ReformaeRepsPage : ContentPage
{
    private readonly ApiServices _services;
    private ISQLiteDbServive _sQLiteDbServive;

    public ReformaeRepsPage(ApiServices services, ISQLiteDbServive sQLiteDbServive)
    {
        Shell.SetTabBarIsVisible(this, false);

        InitializeComponent();
        _services = services;
        _sQLiteDbServive = sQLiteDbServive;
    }

    private async void TapBarb2_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new ChaveiroPage(_services, _sQLiteDbServive));
    }

    private async void Arrow2_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ChaveiroPage(_services, _sQLiteDbServive));
    }

    private async void TapBarb3_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new EletricistaPage(_services, _sQLiteDbServive)); 

    }

    private async void Arrow3_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new EletricistaPage(_services, _sQLiteDbServive));
    }

    private async void TapBarb4_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new PedreiroPage(_services, _sQLiteDbServive));
        
    }

    private async void Arrow4_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PedreiroPage(_services, _sQLiteDbServive));

    }

    private async void TapBarb5_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new PintorPage(_services, _sQLiteDbServive)); 
    }

    private async void Arrow5_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PintorPage(_services, _sQLiteDbServive));
    }

    private async void TaoProf_Tapped(object sender, TappedEventArgs e)
    {
        await Launcher.OpenAsync("https://wa.me/5571987604964");
    }
}