using ScheduleListUI.Models;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Plugin.Maui.SwipeCardView.Core;
using ScheduleListUI.Services;
namespace ScheduleListUI.ViewModels
{
    public class EventosFotosViewModel : BasePageViewModel
    {
        private readonly ApiServices _apiServices;
        private ISQLiteDbServive _MuralRepository;

        private ObservableCollection<EventosFotos> _eventosfotos = new ObservableCollection<EventosFotos>();
        public ObservableCollection<Comentario> Comentarios { get; set; }



        private uint _threshold;

        public EventosFotosViewModel(ApiServices apiServices, ISQLiteDbServive muralRepository)
        {
            // InitializeProfiles();

            Threshold = (uint)(DeviceDisplay.MainDisplayInfo.Width / DeviceDisplay.MainDisplayInfo.Density / 3);

            SwipedCommand = new Command<SwipedCardEventArgs>(OnSwipedCommand);
            DraggingCommand = new Command<DraggingCardEventArgs>(OnDraggingCommand);

            ClearItemsCommand = new Command(OnClearItemsCommand);
            AddItemsCommand = new Command(OnAddItemsCommand);

            Comentarios = new ObservableCollection<Comentario>();
          
            _apiServices = apiServices;
            _MuralRepository = muralRepository;
        }




        public ObservableCollection<EventosFotos> EventosFotos
        {
            get => _eventosfotos;
            set
            {
                _eventosfotos = value;
                RaisePropertyChanged();
            }
        }

        public uint Threshold
        {
            get => _threshold;
            set
            {
                _threshold = value;
                RaisePropertyChanged();
            }
        }

        public System.Windows.Input.ICommand SwipedCommand { get; }

        public ICommand DraggingCommand { get; }

        public ICommand ClearItemsCommand { get; }

        public ICommand AddItemsCommand { get; }

        private void OnSwipedCommand(SwipedCardEventArgs eventArgs)
        {
        }

        private void OnDraggingCommand(DraggingCardEventArgs eventArgs)
        {
            switch (eventArgs.Position)
            {
                case Plugin.Maui.SwipeCardView.Core.DraggingCardPosition.Start:
                    return;

                case DraggingCardPosition.UnderThreshold:
                    break;

                case DraggingCardPosition.OverThreshold:
                    break;

                case DraggingCardPosition.FinishedUnderThreshold:
                    return;

                case DraggingCardPosition.FinishedOverThreshold:
                    break;

                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        private void OnClearItemsCommand()
        {
            EventosFotos.Clear();
        }

        private void OnAddItemsCommand()
        {
        }

        //private void InitializeProfiles()
        //{
        //    // Photos are from https://unsplash.com/. Name and Age values are fictional.

        //    EventosFotos.Add(new EventosFotos { EventosFotosId = 1,  Photo = "p705193.png" });
        //    EventosFotos.Add(new EventosFotos { EventosFotosId = 2,  Photo = "p597956.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 3, Photo = "p497489.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 4, Photo = "p467499.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 5, Photo = "p589739.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 6, Photo = "p453095.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 7, Photo = "p503001.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 8, Photo = "p627958.png" });
        //    EventosFotos.Add(new EventosFotos {EventosFotosId = 9, Photo = "p474893.png" });
        //    EventosFotos.Add(new EventosFotos { EventosFotosId = 10,  Photo = "p458914.png" });


        //}

        public async Task CarregarEventosAsync(int id)
        {
            await _MuralRepository.InitializeAsync();
            var eventosList = await _MuralRepository.GetFoto(id);
            var n = eventosList.Count();

            if (n == 0)
            {

                var eventosApi = await _apiServices.GetEventoFotoAsync(id);

                foreach (var Even in eventosApi)
                {
                    EventosFotos.Add(new EventosFotos
                    {
                        EventosFotosId = Even.EventosFotosId,
                        Photo = Even.Photo,
                        MuraldeEventosId = Even.MuraldeEventosId,
                        CurtidaId = Even.CurtidaId,
                        ComentarioId = Even.ComentarioId
                    });

                    await _MuralRepository.Addfoto(Even);
                }
            }

            EventosFotos.Clear();
            eventosList = await _MuralRepository.GetFoto(id);
            n = eventosList.Count();


            if (n > 0)
            {
                foreach (var dado in eventosList)
                {
                    EventosFotos.Add(new EventosFotos
                    {
                        EventosFotosId = dado.EventosFotosId,
                        Photo = dado.Photo,
                        MuraldeEventosId = dado.MuraldeEventosId,
                        CurtidaId = dado.CurtidaId,
                        ComentarioId = dado.ComentarioId

                    });
                }

                //OnPropertyChanged(nameof(Profissionais));
            }

            await RefreshEventosAsync(id);
        }




        public async Task RefreshEventosAsync(int id)
        {
            var eventosApi = await _apiServices.GetEventoFotoAsync(id);
            var n = eventosApi.Count();
            if (n > 0)
            {
                var profissionalList = await _MuralRepository.GetFoto(id);
                foreach (var dado in profissionalList)
                {
                    await _MuralRepository.DeleteFoto(dado);
                }
                foreach (var dados in eventosApi)
                {
                    var dadosApi = new EventosFotos
                    {

                        EventosFotosId = dados.EventosFotosId,
                        Photo = dados.Photo,
                        MuraldeEventosId = dados.MuraldeEventosId,
                        CurtidaId = dados.CurtidaId,
                        ComentarioId = dados.ComentarioId
                    };
                    await _MuralRepository.Addfoto(dadosApi);
                }
            }

        }
        //////////////////////////////////////


        public async Task CarregarCommentAsync(int id)
        {
            await _MuralRepository.InitializeAsync();
            var commetList = await _MuralRepository.GetCommet(id);
            var n = commetList.Count();

            if (n == 0)
            {

                var eventosApi = await _apiServices.GetCommentAsync(id);

                foreach (var Even in eventosApi)
                {
                    Comentarios.Add(new Comentario
                    {
                        ComentarioId = Even.ComentarioId,
                        UsuarioId = Even.UsuarioId,
                        EventosFotosId = Even.EventosFotosId,
                        Mensagem = Even.Mensagem,
                        UsuarioNome = Even.UsuarioNome,
                        ImgUrl = Even.ImgUrl 
                    });

                    await _MuralRepository.AddCommet(Even);
                }
            }

            Comentarios.Clear();
            commetList = await _MuralRepository.GetCommet(id);
            n = commetList.Count();


            if (n > 0)
            {
                foreach (var dado in commetList)
                {
                    Comentarios.Add(new Comentario
                    {
                        ComentarioId = dado.ComentarioId,
                        UsuarioId = dado.UsuarioId,
                        EventosFotosId = dado.EventosFotosId,
                        Mensagem = dado.Mensagem,
                        UsuarioNome = dado.UsuarioNome,
                        ImgUrl = dado.ImgUrl

                    });
                }

                //OnPropertyChanged(nameof(Profissionais));
            }

            await RefreshCommentsAsync(id);
        }




        public async Task RefreshCommentsAsync(int id)
        {
            var eventosApi = await _apiServices.GetCommentAsync(id);
            var n = eventosApi.Count();
            
                var profissionalList = await _MuralRepository.GetCommet(id);
                foreach (var dado in profissionalList)
                {
                    await _MuralRepository.DeleteComment(dado);
                }
                foreach (var dados in eventosApi)
                {
                    var dadosApi = new Comentario
                    {

                        ComentarioId = (int)dados.ComentarioId,
                        UsuarioId = dados.UsuarioId,
                        EventosFotosId = dados.EventosFotosId,
                        Mensagem = dados.Mensagem,
                        UsuarioNome = dados.UsuarioNome,
                        ImgUrl = dados.ImgUrl 
                    };
                    await _MuralRepository.AddCommet(dadosApi);
                }
            

        }


        public async Task AddCommentAsync(Comentario comentario)
        {
            try
            {
                //var newComment = new Comentario
                //{
                //    UsuarioId = comentario.UsuarioId,
                //    EventosFotosId = comentario.EventosFotosId,
                //    Mensagem = comentario.Mensagem,
                //    UsuarioNome = comentario.UsuarioNome,
                //    //ImgUrl = Preferences.Get("usuarioimg", string.Empty) ?? "perfil.svg",
                //    ImgUrl = comentario.ImgUrl,

                //    DataComentario = comentario.DataComentario
                //};
                var addedComment = await _apiServices.Comment(comentario);

            }
            catch (Exception ex)
            {
                // Trate exceções aqui, se necessário
                Console.WriteLine($"Erro ao adicionar comentário: {ex.Message}");
            }


        }
    }
}
