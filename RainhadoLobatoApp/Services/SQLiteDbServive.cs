using ScheduleListUI.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.Services
{
    public class SQLiteDbServive : ISQLiteDbServive
    {
        private SQLiteAsyncConnection _dbConnection;
        public async Task InitializeAsync()
        {
            await SetUpDb();
        }

        private async Task SetUpDb()
        {
            try
            {
                if (_dbConnection == null)
                {
                    string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Rainha.db");
                    _dbConnection = new SQLiteAsyncConnection(dbPath);
                    await _dbConnection.CreateTablesAsync<Destaque, ScheduleModel, ProfissionalModel, Recado, MuraldeEventos>();
                    await _dbConnection.CreateTableAsync<EventosFotos>();
                    await _dbConnection.CreateTableAsync<Comentario>();



                }
            }
            catch (Exception ex) {

                Console.WriteLine(ex);
            }
        }
        public async Task<int> AddDestaque(Destaque destaque)
        {
           return await _dbConnection.InsertAsync(destaque);
        }

        public async Task<int> DeleteDestaque(Destaque destaque)
        {
            return await _dbConnection.DeleteAsync(destaque);
        }
        public async Task<IEnumerable<Destaque>> GetDestaques()
        {
            return await _dbConnection.Table<Destaque>().ToListAsync();
        }

        public async Task<int> AddRecado(Recado recado)
        {
            return await _dbConnection.InsertAsync(recado);
        }

        public async Task<int> DeleteRecado(Recado recado)
        {
            return await _dbConnection.DeleteAsync(recado);
        }
        public async Task<IEnumerable<Recado>> GetRecados()
        {

            return await _dbConnection.Table<Recado>().ToListAsync();


        }

        public async Task<IEnumerable<ProfissionalModel>> GetProfissional()
        {
            return await _dbConnection.Table<ProfissionalModel>().ToListAsync();
        }
        public async Task<IEnumerable<ProfissionalModel>> GetProfissionalFiltro(string profissionalTipo, string categoria)
        {
            return await _dbConnection.Table<ProfissionalModel>().Where(p=> p.ProfissaoNome == profissionalTipo &&
            p.ProfiCategoriaNome == categoria).ToListAsync();
        }
        public async  Task<int> AddProfissional(ProfissionalModel profissiona)
        {
            return await _dbConnection.InsertAsync(profissiona);
        }

        public async  Task<int> DeleteProfissional(ProfissionalModel profissiona)
        {
            return await _dbConnection.DeleteAsync(profissiona);
        }

        public async Task<IEnumerable<ScheduleModel>> GetAgendas()
        {
            return await _dbConnection.Table<ScheduleModel>().ToListAsync();
        }

        public async Task<int> AddAgenda(ScheduleModel agenda)
        {
            return await _dbConnection.InsertAsync(agenda);
        }

        public async Task<int> DeleteAgenda(ScheduleModel agenda)
        {
            return await _dbConnection.DeleteAsync(agenda);
        }

        public async Task<IEnumerable<MuraldeEventos>> GetMural()
        {
            return await _dbConnection.Table<MuraldeEventos>().ToListAsync();
        }

        public async Task<int> AddMural(MuraldeEventos mural)
        {
            return await _dbConnection.InsertAsync(mural);
        }

        public async Task<int> DeleteMural(MuraldeEventos mural)
        {
            return await _dbConnection.DeleteAsync(mural);
        }

        public async Task<IEnumerable<EventosFotos>> GetFoto(int id)
        {
            return await _dbConnection.Table<EventosFotos>().Where(c=> c.MuraldeEventosId == id).ToListAsync();
        }

        public async Task<int> Addfoto(EventosFotos foto)
        {
            return await _dbConnection.InsertAsync(foto);
        }

        public async Task<int> DeleteFoto(EventosFotos foto)
        {
            return await _dbConnection.DeleteAsync(foto);
        }

        public async Task<IEnumerable<Comentario>> GetCommet(int id)
        {
            return await _dbConnection.Table<Comentario>().Where(c => c.EventosFotosId == id).ToListAsync();
        }

        public async Task<int> AddCommet(Comentario comm)
        {
            return await _dbConnection.InsertAsync(comm);
        }

        public async Task<int> DeleteComment(Comentario comm)
        {
            return await _dbConnection.DeleteAsync(comm);
        }
    }
}
