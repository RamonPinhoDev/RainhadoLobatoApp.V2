using ScheduleListUI.Models;
using ScheduleListUI.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
    public class MuraldeEventosViewModel
    {
        private readonly ApiServices _apiServices;

        private ISQLiteDbServive _MuralRepository;
        public ObservableCollection<MuraldeEventos> Eventos { get; set; }

        public MuraldeEventosViewModel(ApiServices apiServices, ISQLiteDbServive profisionalRepository)
        {
            _apiServices = apiServices;
            _MuralRepository = profisionalRepository;
            Eventos = new ObservableCollection<MuraldeEventos>();


           
        }


        public async Task CarregarEventosAsync()
        {
            await _MuralRepository.InitializeAsync();
            var eventosList = await _MuralRepository.GetMural();
            var n = eventosList.Count();

            if (n == 0)
            {

                var eventosApi = await _apiServices.GetMuralAsync();

                foreach (var Even in eventosApi)
                {
                    Eventos.Add(new MuraldeEventos
                    {
                        MuraldeEventosId = Even.MuraldeEventosId,
                        Titulo = Even.Titulo,
                        Img = Even.Img
                    });

                    await _MuralRepository.AddMural(Even);
                }
            }

            Eventos.Clear();
            eventosList = await _MuralRepository.GetMural();
            n = eventosList.Count();


            if (n > 0)
            {
                foreach (var dado in eventosList)
                {
                    Eventos.Add(new MuraldeEventos
                    {
                        MuraldeEventosId = dado.MuraldeEventosId,
                        Titulo = dado.Titulo,
                        Img = dado.Img,

                    });
                }

                //OnPropertyChanged(nameof(Profissionais));
            }

            await RefreshEventosAsync();
        }




        public async Task RefreshEventosAsync()
        {
            var eventosApi = await _apiServices.GetMuralAsync();
            var n = eventosApi.Count();
           
                var profissionalList = await _MuralRepository.GetMural();
                foreach (var dado in profissionalList)
                {
                    await _MuralRepository.DeleteMural(dado);
                }
                foreach (var dados in eventosApi)
                {
                    var dadosApi = new MuraldeEventos
                    {
                        MuraldeEventosId = dados.MuraldeEventosId,
                        Titulo = dados.Titulo,
                        Img = dados.Img,
                    };
                    await _MuralRepository.AddMural(dadosApi);
                }
            

        }









    }
}
