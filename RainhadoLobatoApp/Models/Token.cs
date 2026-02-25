using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json.Serialization;


namespace ScheduleListUI.Models
{
    internal class Token
    {

        [JsonPropertyName("accesstoken")]
        public string? Accesstoken { get; set; }
       
        [JsonPropertyName("tokentype")]
        public string? TokenType { get; set; }

        [JsonPropertyName("usuarioid")]
        public int? UsuarioId { get; set; }

        [JsonPropertyName("usuarionome")]
        public string? UsuarioNome { get; set; }
    }
}
