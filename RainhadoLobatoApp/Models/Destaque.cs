using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    [Table("Desques")]
    public class Destaque
    {
        [PrimaryKey, AutoIncrement]
        public int DestaqueId { get; set; }
        [MaxLength(250), NotNull]
        [JsonPropertyName("descricao")]
        public string Descricao { get; set; }
    }
}
