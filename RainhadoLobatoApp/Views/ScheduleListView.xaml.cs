using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

using System.Transactions;
using System.Collections.Generic;
using ScheduleListUI.Models;

namespace ScheduleListUI.Views;

public partial class ScheduleListView : ContentPage
{
  private  ApiServices _apiServices;
    private string diaSemana;
    private ISQLiteDbServive _sQLiteDbServive;

    private bool _isPanelTranslated;
    public ScheduleListView(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
    {
        InitializeComponent();
        
        DateTime data = DateTime.Now;
        diaSemana = data.DayOfWeek.ToString();
        _sQLiteDbServive = sQLiteDbServive;
        _apiServices = apiServices;
       
        this.BindingContext = new ScheduleListViewModel(diaSemana, _apiServices, _sQLiteDbServive);
        panelLeft.TranslateTo(-80, 0, 150);
    }
    
    private void DatePicker_DateSelected(object sender, DateChangedEventArgs e)
    {
        
        var u = e.NewDate.DayOfWeek.ToString();
        var viewModel = (ScheduleListViewModel)BindingContext;
        viewModel.BindDataToScheduleList(u);

    }


    //private void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    //{
    //    if (_isPanelTranslated)
    //    {
    //        panelLeft.TranslateTo(-80, 0, 150);
    //    }
    //    else
    //    {
    //        panelLeft.TranslateTo(0, 0, 150);
    //    }

    //    _isPanelTranslated = !_isPanelTranslated;
    //}

    protected override void OnAppearing()
    {
        base.OnAppearing();
        panelLeft.TranslateTo(0, 0, 150);
    }
    //protected override void OnDisappearing()
    //{
    //    base.OnDisappearing();
    //    var viewModel = (ScheduleListViewModel)BindingContext;
    //    viewModel.RefreshAgendasAsync();


    //}
}