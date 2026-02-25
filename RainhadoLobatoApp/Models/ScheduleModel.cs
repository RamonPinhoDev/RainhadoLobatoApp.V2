using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    [Table("Agenda")]
    public class ScheduleModel
    {
        [PrimaryKey, AutoIncrement]
        
        public int AgendaId { get; set; }
        [MaxLength(100), NotNull]

        [JsonPropertyName("titulo")]
        public string Titulo { get; set; }
        [MaxLength(250), NotNull]
        [JsonPropertyName("descricao")]
        public string Descricao { get; set; }
        [JsonPropertyName("diaSemanaIgeles")]
        public string DiaSemanaIgeles { get; set; }
        [Ignore]
        public Color BackgroundColor { get; set; }

    }
}
