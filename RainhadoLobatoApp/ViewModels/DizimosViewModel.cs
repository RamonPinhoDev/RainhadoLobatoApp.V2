using CommunityToolkit.Mvvm.ComponentModel;
using ScheduleListUI.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
    internal class DizimosViewModel : ObservableObject
    {
        public ObservableCollection<Dizimo> Dizimos { get; set; }

        public DizimosViewModel()
        {
            Dizimos = new ObservableCollection<Dizimo> 
            { 
              new Dizimo { ImageUrl ="carouselteste1.png"},
              new Dizimo { ImageUrl ="carouselteste2.png"}
            };
        }
    }
}
