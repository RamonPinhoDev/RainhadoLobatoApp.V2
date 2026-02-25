using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ScheduleListUI.ViewModels
{
    public partial class ScheduleListViewModel : ObservableObject
    {
        private ISQLiteDbServive _agendaRepository;

        public ObservableCollection<DaysModel> WeekDays { get; set; } = new ObservableCollection<DaysModel>();
        public ObservableCollection<ScheduleModel> ScheduleList { get; set; } = new ObservableCollection<ScheduleModel>();
        private List<ScheduleModel> _allScheduleList = new List<ScheduleModel>();

        private readonly ApiServices _apiServices;

        public ScheduleListViewModel()
        {
            
        }

        [ObservableProperty]
        private DateTime _currentDate = DateTime.Now;

        [ObservableProperty]
        private bool _isBusy;

        public ScheduleListViewModel(string day, ApiServices apiServices, ISQLiteDbServive sQLiteDbServive)
        {
            _agendaRepository = sQLiteDbServive;
            _apiServices = apiServices;
            AddAllScheduleList(day);
        }

        public async void AddAllScheduleList(string day)
        {
            IsBusy = true;
            var scheudleList = new List<ScheduleModel>();
           // await CarregarAgendaSQLiteAsync(scheudleList);
            await CarregarAgendaAsync(scheudleList);
            //scheudleList.Add(new ScheduleModel
            //{
            //    Title = "Sunday",
            //    Description = "Momento de fé e comunhão. Participe! 🙏",
            //    StartDateTime = DateTime.Now,
            //    EndDateTime = DateTime.Now.AddHours(5),
            //    BackgroundColor = Color.FromArgb("#68c6da"),
            //});



            _allScheduleList.AddRange(scheudleList);

            BindDataToScheduleList(day);
        }
        public async Task CarregarAgendaSQLiteAsync(List<ScheduleModel> schedule)
        {
            try
            {
                await _agendaRepository.InitializeAsync();
                var agendaList = await _agendaRepository.GetAgendas();
                var n = agendaList.Count();
                if (n == 0)
                {
                    var destaqueApi = await _apiServices.GetAgendaAsync();

                    foreach (var agendas in destaqueApi)
                    {
                        var age = new ScheduleModel() { 
                            
                           Titulo = agendas.Titulo, Descricao = agendas.Descricao, DiaSemanaIgeles = agendas.DiaSemanaIgeles
                        };
                        await _agendaRepository.AddAgenda(age);
                    }



                    // OnPropertyChanged(nameof(Destaques));
                }

                agendaList = await _agendaRepository.GetAgendas();
                n = agendaList.Count();
                if (n > 0)
                {
                    foreach (var dado in agendaList)
                    {
                        schedule.Add(new ScheduleModel
                        {
                            AgendaId = dado.AgendaId,
                            Titulo = dado.Titulo,
                            Descricao = dado.Descricao,
                            DiaSemanaIgeles = dado.DiaSemanaIgeles,
                            BackgroundColor = Color.FromArgb("#68c6da")
                        });
                    }

                    //OnPropertyChanged(nameof(Destaques));
                }
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex);
            }
        }
        public async Task CarregarAgendaAsync(List<ScheduleModel> schedule)
        {
            var agenda = await _apiServices.GetAgendaAsync();



            if (agenda != null)
            {
                foreach (var dado in agenda)
                {
                    schedule.Add(new ScheduleModel
                    {
                        AgendaId = dado.AgendaId,
                        Titulo = dado.Titulo,
                        Descricao = dado.Descricao,
                        DiaSemanaIgeles = dado.DiaSemanaIgeles,
                        BackgroundColor = Color.FromArgb("#68c6da")
                    });
                }


            }
        }

        public async Task RefreshAgendasAsync()
        {
            var agendaApi = await _apiServices.GetAgendaAsync();
            var n = agendaApi.Count();
            if (n > 0)
            {
                var destaques = await _agendaRepository.GetAgendas();
                foreach (var dado in destaques)
                {
                    await _agendaRepository.DeleteAgenda(dado);
                }

                foreach (var dadosApi in agendaApi)
                {
                    await _agendaRepository.AddAgenda(dadosApi);
                }

            }

        }
        public void BindDataToScheduleList(string? Dok = null)
        {
           
            IsBusy = true;
            Task.Run(async () =>
            {
                await Task.Delay(500);


                var filterScheduleList = _allScheduleList.Where(schedule => schedule.DiaSemanaIgeles == Dok).ToList();

                App.Current.Dispatcher.Dispatch(() =>
                {
                    ScheduleList.Clear();
                    foreach (var schedule in filterScheduleList)
                    {
                        ScheduleList.Add(schedule);
                    }
                    GetWeekDaysInfo();
                    IsBusy = false;
                });
            });
        }

        
        private void GetWeekDaysInfo()
        {
            // Garante que a semana sempre começa na segunda-feira (DayOfWeek.Monday = 1)
            int diff = ((int)CurrentDate.DayOfWeek - (int)DayOfWeek.Monday + 7) % 7;
            DateTime startDayOfWeek = CurrentDate.AddDays(-diff);

            WeekDays.Clear();
            for (int i = 0; i < 7; i++)
            {
                var recordToAdd = new DaysModel
                {
                    DayName = DayOfWeekChar((int)startDayOfWeek.DayOfWeek),
                    Date = startDayOfWeek.Date,
                    IsSelected = startDayOfWeek.Date == CurrentDate.Date,
                };

                WeekDays.Add(recordToAdd);
                startDayOfWeek = startDayOfWeek.AddDays(1);
            }
        }


        private string DayOfWeekChar(int dayOfWeek)
        {
            switch (dayOfWeek)
            {
              

                case 0:
                    return "Dom";
                case 1:
                    return "Seg";
                case 2:
                    return "Ter";
                case 3:
                    return "Qua";
                case 4:
                    return "Qui";
                case 5:
                    return "Sex";
                case 6:
                    return "Sab";
            }
            return "";
        }
        

        [RelayCommand]
        public void WeekDaysSelected(DaysModel item)
        {
            var p= "";
            WeekDays.ToList().ForEach(f => f.IsSelected = false);
            item.IsSelected = true;
            CurrentDate = item.Date;
            if(item.DayName == "Dom")
            {
                 p = "Sunday";
            }
            if (item.DayName == "Seg")
            {
                p = "Monday";
            }
            if (item.DayName == "Ter")
            {
                p = "Tuesday";
            }
            if (item.DayName == "Qua")
            {
                p = "Wednesday";
            }
            if (item.DayName == "Qui")
            {
                p = "Thursday";
            }
            if (item.DayName == "Sex")
            {
                p = "Friday";
            }
            if (item.DayName == "Sab")
            {
                p = "Saturday";
            }
            BindDataToScheduleList(p);
        }




        
    }
}
