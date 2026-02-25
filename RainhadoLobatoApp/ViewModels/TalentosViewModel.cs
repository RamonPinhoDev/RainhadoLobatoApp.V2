
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using ScheduleListUI.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
   public partial class TalentosViewModel : ObservableObject
    {
       
        public ObservableCollection<TalentosModel> Talentos { get; set; }
        private readonly ApiServices _apiServices;

        private ISQLiteDbServive _sQLiteDbServive;



        public TalentosViewModel(ApiServices services, ISQLiteDbServive sQLiteDbServive)
        {
           
            _apiServices = services;
            _sQLiteDbServive = sQLiteDbServive;

            Talentos = new ObservableCollection<TalentosModel>
            {
                new TalentosModel { Nome = "Moda e beleza", ImgUrl = "modaebela.png" },
               new TalentosModel { Nome = "Eventos", ImgUrl = "eventos.png" },
               new TalentosModel { Nome = "Serv. Domésticos", ImgUrl = "dosmestica.png" },
               new TalentosModel { Nome = "Ref. e Reps", ImgUrl = "reformas.png" },
               new TalentosModel { Nome = "Saúde", ImgUrl = "saude.png" },
               new TalentosModel { Nome = "Consultoria", ImgUrl = "consutoria.png" },
               new TalentosModel { Nome = "Mecânico", ImgUrl = "mecaninca.png" },
               new TalentosModel { Nome = "Assistência", ImgUrl = "assistencia.png" },
               new TalentosModel { Nome = "Artesanato", ImgUrl = "artesanato.png" },
               new TalentosModel { Nome = "Condutores", ImgUrl = "condutor.png" },



            };

          
            
        }


     


        [RelayCommand]
        private async void NavegarTalentos(TalentosModel Talentos)
        {
            if (Talentos == null)
                return;
            Page pagina = Talentos.Nome switch
            {
                "Moda e beleza" => new ModaebelezaPage(_apiServices, _sQLiteDbServive),
                "Eventos" => new EventosPage(_apiServices, _sQLiteDbServive),
                "Serv. Domésticos" => new ServDomesticosPage(_apiServices, _sQLiteDbServive),
                "Ref. e Reps" => new ReformaeRepsPage(_apiServices, _sQLiteDbServive),
                "Saúde" => new SaudePage(_apiServices, _sQLiteDbServive),
                "Consultoria" => new ConsultoriaPage(_apiServices, _sQLiteDbServive),
                "Mecânico" => new MecanicoPage(_apiServices, _sQLiteDbServive),
                "Assistência" => new AsistenciaTecnicaPage(_apiServices, _sQLiteDbServive),
                "Artesanato" => new ArtesanatoPage(_apiServices, _sQLiteDbServive),
                "Condutores" => new CondutorPage(_apiServices, _sQLiteDbServive),






                _ => null
            };

            if (pagina != null)
                await Shell.Current.Navigation.PushAsync(pagina);
        }

      



    }
}
