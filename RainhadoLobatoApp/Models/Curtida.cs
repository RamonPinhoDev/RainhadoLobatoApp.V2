using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    public class Curtida
    {
        public int CurtidaId { get; set; }
       
        public int? UsuarioId { get; set; }
       

        public int? EventosFotosId { get; set; }

        public DateTime? DataComentario { get; set; }
    }
}
