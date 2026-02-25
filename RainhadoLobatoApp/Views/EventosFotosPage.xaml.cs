using CommunityToolkit.Maui.Views;
using Plugin.Maui.SwipeCardView.Core;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using ScheduleListUI.ViewModels;

namespace ScheduleListUI.Views;

public partial class EventosFotosPage : ContentPage
{
    private readonly ISQLiteDbServive _sQLiteDbServive;
    private readonly ApiServices _apiServices;
    private readonly EventosFotosViewModel _vm;
    private int _id;
    private bool _popupAberto = false;

    public EventosFotosPage(ApiServices apiServices, ISQLiteDbServive sQLiteDbServive, int id)
    {
        InitializeComponent();
        Shell.SetTabBarIsVisible(this, false);

        _sQLiteDbServive = sQLiteDbServive;
        _apiServices = apiServices;
        _id = id;

        _vm = new EventosFotosViewModel(_apiServices, _sQLiteDbServive);
        BindingContext = _vm;

        SwipeCardView.Dragging += OnDragging;
        SwipeCardView.Swiped += OnSwiped;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        var popup = new Aguarde();
        this.ShowPopup(popup);

        await _vm.CarregarEventosAsync(_id);

        popup.Close();
    }

    private void OnDislikeClicked(object sender, EventArgs e)
    {
        Preferences.Set("coment", 1);
        SwipeCardView.InvokeSwipe(SwipeCardDirection.Left);
    }

    private void OnSuperLikeClicked(object sender, EventArgs e)
    {
        SwipeCardView.InvokeSwipe(SwipeCardDirection.None);
    }

    private void OnLikeClicked(object sender, EventArgs e)
    {
        Preferences.Set("curt", 2);
        SwipeCardView.InvokeSwipe(SwipeCardDirection.Right);
    }

    private void OnDragging(object sender, DraggingCardEventArgs e)
    {
        var like = Preferences.Get("curt", 0);
        var comment = Preferences.Get("coment", 0);
        var view = (View)sender;

        var nopeFrame = view.FindByName<Frame>("NopeFrame");
        var likeFrame = view.FindByName<Frame>("LikeFrame");
        var superLikeFrame = view.FindByName<Frame>("SuperLikeFrame");

        var threshold = (BindingContext as EventosFotosViewModel).Threshold;
        var draggedXPercent = e.DistanceDraggedX / threshold;
        var draggedYPercent = e.DistanceDraggedY / threshold;

        switch (e.Position)
        {
            case DraggingCardPosition.Start:
                if (like == 0 && comment == 0)
                {
                    nopeFrame.Opacity = 0;
                    likeFrame.Opacity = 0;
                    superLikeFrame.Opacity = 0;
                    nopeButton.Scale = 1;
                }
                break;

            case DraggingCardPosition.UnderThreshold:
                if (e.Direction == SwipeCardDirection.Left)
                {
                    nopeFrame.Opacity = (-1) * draggedXPercent;
                    nopeButton.Scale = 1 + draggedXPercent / 2;
                    superLikeFrame.Opacity = 0;
                }
                else if (e.Direction == SwipeCardDirection.Right)
                {
                    likeFrame.Opacity = draggedXPercent;
                    superLikeFrame.Opacity = 0;
                }
                else if (e.Direction == SwipeCardDirection.Up)
                {
                    nopeFrame.Opacity = 0;
                    likeFrame.Opacity = 0;
                    nopeButton.Scale = 1;
                    superLikeFrame.Opacity = (-1) * draggedYPercent;
                }
                break;

            case DraggingCardPosition.OverThreshold:
                if (e.Direction == SwipeCardDirection.Left)
                {
                    nopeFrame.Opacity = 1;
                    superLikeFrame.Opacity = 0;
                }
                else if (e.Direction == SwipeCardDirection.Right)
                {
                    likeFrame.Opacity = 1;
                    superLikeFrame.Opacity = 0;
                }
                else if (e.Direction == SwipeCardDirection.Up)
                {
                    nopeFrame.Opacity = 0;
                    likeFrame.Opacity = 0;
                    superLikeFrame.Opacity = 1;
                }
                break;

            case DraggingCardPosition.FinishedUnderThreshold:
            case DraggingCardPosition.FinishedOverThreshold:
                nopeFrame.Opacity = 0;
                likeFrame.Opacity = 0;
                superLikeFrame.Opacity = 0;
                nopeButton.Scale = 1;
                break;

            default:
                throw new ArgumentOutOfRangeException();
        }
    }

    private async void OnSwiped(object sender, SwipedCardEventArgs e)
    {
        var comment = Preferences.Get("coment", 0);
        var like = Preferences.Get("curt", 0);

        if (_popupAberto)
            return;

        if (e.Direction == SwipeCardDirection.Left && comment == 1)
        {
            _popupAberto = true;
            Preferences.Set("coment", 0);

            var y = e.Item as EventosFotos;
            if (y != null)
            {
                var popup = new ComentarioPage(y.EventosFotosId, _apiServices, _sQLiteDbServive);
                await this.ShowPopupAsync(popup);
            }

            _popupAberto = false;
        }
        else if (e.Direction == SwipeCardDirection.Right && like == 2)
        {
            Preferences.Set("curt", 0);
        }
    }
}
