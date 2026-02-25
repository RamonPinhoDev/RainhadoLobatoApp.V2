using ScheduleListUI.Services;
using ScheduleListUI.Views;

namespace ScheduleListUI;

public partial class AppShell : Shell
{
   private readonly ApiServices _apiServices;

    private ISQLiteDbServive _sQLiteDbServive;
    public AppShell()
    {
        InitializeComponent();
    }


    
   
}
