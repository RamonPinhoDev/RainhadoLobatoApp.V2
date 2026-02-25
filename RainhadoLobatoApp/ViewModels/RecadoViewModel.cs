using CommunityToolkit.Mvvm.ComponentModel;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
    public class RecadoViewModel : ObservableObject
    {
        private ISQLiteDbServive _recadoRepository;
        private readonly ApiServices _apiServices;
        public ObservableCollection<Recado> Recados { get; set; }


        public RecadoViewModel(ApiServices apiServices, ISQLiteDbServive recadoRepository)
        {
            _apiServices = apiServices;
            _recadoRepository = recadoRepository;
            Recados = new ObservableCollection<Recado>();
            
        }


        public async Task CarregarRecadosSQLiteAsync()
        {
            try
            {
                await _recadoRepository.InitializeAsync();
                var recadosList = await _recadoRepository.GetRecados();
                var n = recadosList.Count();
                if (n == 0)
                {
                    var recadosApi = await _apiServices.GetRecadoAsync();

                    foreach (var recados in recadosApi)
                    {
                        var rec = new Recado() { Titulo = recados.Titulo, Descricao = recados.Descricao };
                        await _recadoRepository.AddRecado(rec);
                    }
                }
                Recados.Clear();
                recadosList = await _recadoRepository.GetRecados();
                n = recadosList.Count();
                if (n > 0)
                {
                    foreach (var dado in recadosList)
                    {
                        Recados.Add(new Recado { Titulo = dado.Titulo, Descricao = dado.Descricao, ImageUrl = "recado.png" });
                    }

                    //OnPropertyChanged(nameof(Recados));
                }
            }
            catch (HttpRequestException ex) {

                Console.WriteLine(ex);
            
            }
        }

        public async Task CarregarRecadosAsync()
        {
            try
            {
                var recadosApi = await _apiServices.GetRecadoAsync();


              
                Recados.Clear();
               
                if (recadosApi != null)
                {
                    foreach (var dado in recadosApi)
                    {
                        Recados.Add(new Recado { Titulo = dado.Titulo, Descricao = dado.Descricao, ImageUrl = "recado.png" });
                    }

                    //OnPropertyChanged(nameof(Recados));
                }
            }
            catch (HttpRequestException ex)
            {

                Console.WriteLine(ex);

            }
        }

        public async Task RefreshRecadosAsync()
        {
            var recadosApi = await _apiServices.GetRecadoAsync();
            var n = recadosApi.Count();
            
                var recados = await _recadoRepository.GetRecados();
                foreach (var dado in recados)
                {
                     await _recadoRepository.DeleteRecado(dado);
                }
                foreach (var dadosApi in recadosApi)
                {
                    var rec = new Recado() { Titulo = dadosApi.Titulo, Descricao = dadosApi.Descricao };
                    await _recadoRepository.AddRecado(rec);
                }
            

        }


        //public event PropertyChangedEventHandler PropertyChanged;

        //protected void OnPropertyChanged([CallerMemberName] string nome = null)
        //{
        //    PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nome));
        //}
    }
}
