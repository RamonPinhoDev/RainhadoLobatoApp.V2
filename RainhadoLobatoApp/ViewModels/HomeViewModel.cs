using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using ScheduleListUI.Views;
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
    public partial class HomeViewModel : ObservableObject
    {
       private readonly ApiServices _apiServices;
        private ISQLiteDbServive _destaqueRepository;

        public ObservableCollection<Destaque> Destaques { get; set; }
        public ObservableCollection<Pastorais> Pastorais { get; set; }

        [ObservableProperty]
        private Pastorais selectedPastoral;
        public HomeViewModel(ApiServices apiServices, ISQLiteDbServive destaqueRepository)
        {
            _apiServices = apiServices;



            Destaques = new ObservableCollection<Destaque>();


            Pastorais = new ObservableCollection<Pastorais>
            {
                new Pastorais { Nome = "Escola da fé", ImageUrl = "escolafe.png" },
                new Pastorais { Nome = "Círculos Biblicos", ImageUrl = "evagelismo.png" },
                new Pastorais { Nome = "Familia", ImageUrl = "familia.png" },
                new Pastorais { Nome = "Comunicação", ImageUrl = "pascom.png" },
                new Pastorais { Nome = "Jovens", ImageUrl = "jovens.png" },
                new Pastorais { Nome = "Musica", ImageUrl = "music.png" },
                new Pastorais { Nome = "Dizimo", ImageUrl = "dizimo.png" },
                new Pastorais { Nome = "Acólito & Cor", ImageUrl = "coroinha.png" },
                new Pastorais { Nome = "Mej", ImageUrl = "mej.png" },
                new Pastorais { Nome = "Terço dos Hom.", ImageUrl = "tercohomem.png" },
                new Pastorais { Nome = "MESC", ImageUrl = "ministrocomunhao.png" },
                new Pastorais { Nome = "MP", ImageUrl = "minesteriopalavra.png" },
                new Pastorais { Nome = "Catequese", ImageUrl = "catequese.png" },
                new Pastorais { Nome = "Oração", ImageUrl = "orcao.png" },
                new Pastorais { Nome = "Acolhimento", ImageUrl = "acolhimento.png" },
                new Pastorais { Nome = "PCr", ImageUrl = "crianca2.png" },
                


            };
            _destaqueRepository = destaqueRepository;
        }




        public async Task CarregarDestaquesAsync()
        {
            try { 
            await _destaqueRepository.InitializeAsync();
            var destaquesList = await _destaqueRepository.GetDestaques();
           var n = destaquesList.Count();
            if (n == 0)
            {
                var destaqueApi = await _apiServices.GetDestaquesAsync();

                foreach (var destaques in destaqueApi)
                {
                    var dest = new Destaque() { Descricao = destaques.Descricao };
                   await _destaqueRepository.AddDestaque(dest);
                }


                
                // OnPropertyChanged(nameof(Destaques));
            }

            Destaques.Clear();
             destaquesList = await _destaqueRepository.GetDestaques();
             n = destaquesList.Count();
            if (n > 0)
            {
                foreach (var dado in destaquesList)
                {
                    Destaques.Add(new Destaque { Descricao = dado.Descricao });
                }

                //OnPropertyChanged(nameof(Destaques));
            }
            }catch(Exception ex)
            {

                Console.WriteLine(ex);
            }
        }

       

        public async Task RefreshDestaquesAsync()
        {
            var destaqueApi = await _apiServices.GetDestaquesAsync();
            var n = destaqueApi.Count();
            if (n > 0)
            {
                var destaques = await _destaqueRepository.GetDestaques();
                foreach (var dado in destaques)
                {
                    await _destaqueRepository.DeleteDestaque(dado);
                }
                
                foreach(var dadosApi in destaqueApi)
                {
                    await _destaqueRepository.AddDestaque(dadosApi);
                }
                
            }

        }
        partial void OnSelectedPastoralChanged(Pastorais value)
        {
            if (value != null)
            {
                NavegarParaPastoral(value);
                SelectedPastoral = null;
            }
        }

        [RelayCommand]
        private async void NavegarParaPastoral(Pastorais pastoral)
        {
            if (pastoral == null)
                return;
            Page pagina = pastoral.Nome switch
            {
                "Círculos Biblicos" => new Evagelismo(),
                "Escola da fé" => new EscolaFePage(),
                "Familia" => new Familia(),
                "Comunicação" => new Comunicacao(),
                "Jovens" => new Jovens(),
                "Musica" => new Musica(),
                "Dizimo" => new DizimoPage(),
                "Acólito & Cor" => new CoroinhaPage(),
                "Mej" => new MejPage(),
                "Terço dos Hom." =>new TercoHomemPage(),
                "MESC" => new MinistroCimunhaoPage(),
                "MP" => new MnistroPalavraPage(),
                "Catequese" => new CatequesePage(),
                "Oração" => new Oracaopage(),
                "Acolhimento" => new AcolhimentoPage(),
                "PCr" => new PastoralCriancaPage(),





                _ => null
            };

            if (pagina != null)
                await Shell.Current.Navigation.PushAsync(pagina);
        }
        

    }
}
