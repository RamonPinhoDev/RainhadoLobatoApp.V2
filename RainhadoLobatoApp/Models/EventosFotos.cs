using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    public class EventosFotos
    {
        [PrimaryKey]
        [JsonPropertyName("eventosFotosId")]
        public int EventosFotosId { get; set; }
        [JsonPropertyName("photo")]
        public string Photo { get; set; }
        [JsonPropertyName("muraldeEventosId")]
        public int? MuraldeEventosId { get; set; }
        [JsonPropertyName("curtidaId")]
        public int? CurtidaId { get; set; }
        [JsonPropertyName("comentarioId")]
        public int? ComentarioId { get; set; }

    }
}
