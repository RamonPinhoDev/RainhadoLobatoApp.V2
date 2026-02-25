using ScheduleListUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.Services
{
    public interface ISQLiteDbServive
    {
        Task InitializeAsync(); 
        Task<IEnumerable<Destaque>> GetDestaques();
        
        Task<int> AddDestaque(Destaque destaque);
        Task<int> DeleteDestaque(Destaque destaque);

        Task<IEnumerable<Recado>> GetRecados();

        Task<int> AddRecado(Recado recado);
        Task<int> DeleteRecado(Recado recado);

        Task<IEnumerable<ProfissionalModel>> GetProfissional();
        Task<IEnumerable<ProfissionalModel>> GetProfissionalFiltro(string profissionalTipo, string categoria);

        Task<int> AddProfissional(ProfissionalModel profissiona);
        Task<int> DeleteProfissional(ProfissionalModel profissiona);

        Task<IEnumerable<ScheduleModel>> GetAgendas();

        Task<int> AddAgenda(ScheduleModel agenda);
        Task<int> DeleteAgenda(ScheduleModel agenda);


        Task<IEnumerable<MuraldeEventos>> GetMural();

        Task<int> AddMural(MuraldeEventos mural);
        Task<int> DeleteMural(MuraldeEventos mural);



        Task<IEnumerable<EventosFotos>> GetFoto(int id);

        Task<int> Addfoto(EventosFotos mural);
        Task<int> DeleteFoto(EventosFotos mural);



        Task<IEnumerable<Comentario>> GetCommet(int id);

        Task<int> AddCommet(Comentario mural);
        Task<int> DeleteComment(Comentario mural);
    }
}
