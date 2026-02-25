using ScheduleListUI.Services;
namespace ScheduleListUI.Views;

public partial class SaudePage : ContentPage
{
    private readonly ApiServices _services;
    private ISQLiteDbServive _sQLiteDbServive;

    public SaudePage(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
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
        await Navigation.PushAsync(new CuidadorPage(_services, _sQLiteDbServive));

    }

    private async void Arrow1_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new CuidadorPage(_services, _sQLiteDbServive));

    }
    private async void TapBarb2_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new DentistaPage(_services, _sQLiteDbServive));

    }

    private async void Arrow2_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new DentistaPage(_services, _sQLiteDbServive));

    }
    private async void TapBarb3_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new EnfermeiroPage(_services, _sQLiteDbServive));

    }

    private async void Arrow3_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new EnfermeiroPage(_services, _sQLiteDbServive));

    }

    private async void TapBarb4_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new FisioPage(_services, _sQLiteDbServive));
        
    }

    private async  void Arrow4_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new FisioPage(_services, _sQLiteDbServive));

    }

    private async void TapBarb5_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new NutriPage(_services, _sQLiteDbServive)); 
    }

    private async void Arrow5_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new NutriPage(_services, _sQLiteDbServive));

    }

    private async void TapBarb6_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new PsicologoPage(_services, _sQLiteDbServive));
        
    }

    private async void Arrow6_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PsicologoPage(_services, _sQLiteDbServive));
    }

    private async void TapBarb7_Tapped(object sender, TappedEventArgs e)
    {
        await Navigation.PushAsync(new VeterinarioPage(_services, _sQLiteDbServive));
        
    }

    private async void Arrow7_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new VeterinarioPage(_services, _sQLiteDbServive));

    }


}