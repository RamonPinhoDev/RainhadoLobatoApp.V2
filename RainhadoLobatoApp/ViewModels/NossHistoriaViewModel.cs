using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using ScheduleListUI.Models;
using ScheduleListUI.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
    public partial class NossHistoriaViewModel : ObservableObject
    {
        public ObservableCollection<NossHistoria> NossHistoria { get; set; }

        public NossHistoriaViewModel()
        {
            NossHistoria = new ObservableCollection<NossHistoria>
            {
                new NossHistoria { Nome = "Parócos", ImageUrl = "paroco.png" },
                new NossHistoria { Nome = "Igrejas", ImageUrl = "igreja.png" }
            };
        }

        [RelayCommand]
        private async Task SelecionarItem(NossHistoria item)
        {
            if (item == null)
                return;

            Page pagina = item.Nome switch
            {
                "Parócos" => new Parocos(),
                "Igrejas" => new IgrejasPage(),
                _ => null
            };

            if (pagina != null)
                await Shell.Current.Navigation.PushAsync(pagina);
        }
    }
}
