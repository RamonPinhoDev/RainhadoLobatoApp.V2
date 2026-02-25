using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    [Table("MuraldeEventos")]
    public class MuraldeEventos
    {
        [PrimaryKey]
        [JsonPropertyName("muraldeEventosId")]

        public int MuraldeEventosId { get; set; }
        [JsonPropertyName("titulo")]
        public string Titulo { get; set; }
        [JsonPropertyName("img")]

        public string Img { get; set; }
        
    }
}
