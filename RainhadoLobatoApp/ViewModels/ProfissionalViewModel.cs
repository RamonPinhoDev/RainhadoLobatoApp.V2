using CommunityToolkit.Mvvm.ComponentModel;
using Microsoft.Maui.Controls.PlatformConfiguration;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
   
    public class ProfissionalViewModel : ObservableObject
    {
      


        private readonly ApiServices _apiServices;

        private ISQLiteDbServive _profisionalRepository;
        public ObservableCollection<ProfissionalModel> Profissionais { get; set; }


        public ProfissionalViewModel(ApiServices apiServices, ISQLiteDbServive profisionalRepository)
        {
            _apiServices = apiServices;
            Profissionais = new ObservableCollection<ProfissionalModel>();
            _profisionalRepository = profisionalRepository;
        }



        public async Task CarregarProfissionaisAsync(int page, string profissionalTipo, string categoria)
        {
            await _profisionalRepository.InitializeAsync();
            var profissionalList = await _profisionalRepository.GetProfissionalFiltro(profissionalTipo, categoria);
            var n = profissionalList.Count();

            if (n == 0)
            {

                var talentosApi = await _apiServices.GetProfissionaisAsync(page, profissionalTipo, categoria);

                foreach (var talen in talentosApi)
                {
                    Profissionais.Add( new ProfissionalModel { Nome = talen.Nome,  Descricao = talen.Descricao,
                     Telefone = talen.Telefone, ImgUrl = talen.ImgUrl,  ProfiCategoriaNome = categoria,
                     ProfissaoNome = profissionalTipo
                    });

                    talen.ProfissaoNome = profissionalTipo; talen.ProfiCategoriaNome = categoria;
                    await _profisionalRepository.AddProfissional(talen);
                }
            }

            Profissionais.Clear();
            profissionalList = await _profisionalRepository.GetProfissionalFiltro(profissionalTipo, categoria);
            n = profissionalList.Count();
            Preferences.Set("itensTotal", profissionalList.Count().ToString());


            if (n > 0)
            {
                foreach (var dado in profissionalList)
                {
                    Profissionais.Add(new ProfissionalModel { Nome = dado.Nome, Descricao = dado.Descricao, Telefone = dado.Telefone, ImgUrl = dado.ImgUrl
                    });
                }

                //OnPropertyChanged(nameof(Profissionais));
            }

          await  RefreshPrifissionaisAsync(page, profissionalTipo, categoria);
        }




        public async Task CarregarProfissionaisArrowAsync(int page, string profissionalTipo, string categoria)
        {
           

                var talentosApi = await _apiServices.GetProfissionaisAsync(page, profissionalTipo, categoria);
            Profissionais.Clear();

            if (talentosApi != null) { 
                foreach (var talen in talentosApi)
                {
                Profissionais.Add(  new ProfissionalModel
                    {
                        Nome = talen.Nome,
                        Descricao = talen.Descricao,
                        Telefone = talen.Telefone,
                        ImgUrl = talen.ImgUrl,
                        ProfissionaisId = talen.ProfissionaisId,
                        ProfiCategoriaNome = categoria,
                        ProfissaoNome = profissionalTipo
                    });
                    
                }

            }
            
            Preferences.Set("itensTotal", talentosApi.Count().ToString());


           
                

                //OnPropertyChanged(nameof(Profissionais));
            
        }




        public async Task RefreshPrifissionaisAsync(int page, string profissionalTipo, string categoria)
        {
            var talentosApi = await _apiServices.GetProfissionaisAsync(page, profissionalTipo, categoria);
            var n = talentosApi.Count();
           
                var profissionalList = await _profisionalRepository.GetProfissionalFiltro(profissionalTipo, categoria);
                foreach (var dado in profissionalList)
                {
                    await _profisionalRepository.DeleteProfissional(dado);
                }
                foreach (var dados in talentosApi)
                {
                    var dadosApi = new ProfissionalModel
                    {
                        Nome = dados.Nome,
                        Descricao = dados.Descricao,
                        Telefone = dados.Telefone,
                        ImgUrl = dados.ImgUrl,
                        ProfissionaisId = dados.ProfissionaisId,
                        ProfiCategoriaNome = categoria,
                        ProfissaoNome = profissionalTipo
                    };
                    await _profisionalRepository.AddProfissional(dadosApi);
                }
            

        }


        public async Task CarregarProfissionaisByNameAsync(int page, string profissionalTipo, string categoria, string nome)
        {
            var talentos = await _apiServices.GetProfissionaisByNameAsync(page, profissionalTipo, categoria, nome);

            //Preferences.Set("itensTotal", talentos.Count().ToString());

            Profissionais.Clear();

            if (talentos != null)
            {
                foreach (var dado in talentos)
                {
                    Profissionais.Add(new ProfissionalModel { Nome = dado.Nome, Descricao = dado.Descricao, Telefone = dado.Telefone, ImgUrl = dado.ImgUrl
                         });
                }

                //OnPropertyChanged(nameof(Profissionais));
            }
        }
    }
}
