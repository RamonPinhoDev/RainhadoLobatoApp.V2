using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    public class Comentario
    {

        [PrimaryKey]
        [JsonPropertyName("comentarioId")]
        public int ComentarioId { get; set; }
        [JsonPropertyName("usuarioId")]
        public int? UsuarioId { get; set; }
        [JsonPropertyName("eventosFotosId")]
        public int? EventosFotosId { get; set; }
        [JsonPropertyName("mensagem")]
        public string? Mensagem { get; set; }
        [JsonPropertyName("usuarioNome")]
        public string? UsuarioNome { get; set; }
        [JsonPropertyName("imgUrl")]
        public string? ImgUrl { get; set; }

        [JsonPropertyName("dataComentario")]
        public DateTime? DataComentario { get; set; }

    }
}
