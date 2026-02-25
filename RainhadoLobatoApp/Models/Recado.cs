using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    [Table("Recado")]
    public class Recado
    {
        [PrimaryKey, AutoIncrement]
        public int RecadoId { get; set; }
        [MaxLength(100), NotNull]
        [JsonPropertyName("titulo")]
        public string Titulo { get; set; }
        [MaxLength(300), NotNull]
        [JsonPropertyName("descricao")]
        public string Descricao { get; set; }
        [Ignore]
        public string ImageUrl { get; set; }
    }
}
