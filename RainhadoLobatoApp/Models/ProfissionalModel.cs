using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ScheduleListUI.Models
{
    [Table("Profissionais")]
    public class ProfissionalModel
    {
        [PrimaryKey, AutoIncrement]
        public int ProfissionaisId { get; set; }
        [MaxLength(100), NotNull]
        [JsonPropertyName("nome")]
        public string Nome { get; set; }
        [MaxLength(250), NotNull]
        [JsonPropertyName("descricao")]
        public string Descricao { get; set; }
        [MaxLength(100), NotNull]
        [JsonPropertyName("telefone")]

        public string Telefone { get; set; }
        [JsonPropertyName("imgUrl")]
        [MaxLength(250), NotNull]
        public string ImgUrl { get; set; }
        [MaxLength(100), NotNull]
        public string ProfiCategoriaNome { get; set; }
        [MaxLength(100), NotNull]
        public string ProfissaoNome { get; set; }

    }
}
