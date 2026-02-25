using CommunityToolkit.Mvvm.ComponentModel;
using ScheduleListUI.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ScheduleListUI.ViewModels
{
    public class ParocosViewModel : ObservableObject
    {
        public ObservableCollection<Paroco> Parocos { get; set; }

        public ParocosViewModel()
        {

            Parocos = new ObservableCollection<Paroco> {
            //     new Paroco { Nome = "Padre Tiago", Periodo = "xx/xx/xxxx - xx/xx/xxxx",
            //    Descricao ="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", ImgUrl ="padretiago.jpg"
            //},
            new Paroco { Nome = "Monsenhor Ademar Dantas", Periodo = "1975 - 1977",
                Descricao ="Monsenhor Ademar Dantas foi o segundo pároco da nossa paroquia, e teve papel decisivo na consolidação da vida pastoral e comunitária local. Com zelo missionário, tornou-se um dos grandes precursores da fé em nossa comunidade, lançando as primeiras sementes que floresceriam em uma igreja viva, participativa e enraizada no Evangelho. Seu legado permanece presente na história e na espiritualidade da comunidade, que reconhece nele um verdadeiro semeador da Palavra de Deus.", ImgUrl ="padredantas.png"
            },
                new Paroco { Nome = "Padre Mathon", Periodo = "1977 - 2009",
                Descricao ="Nascido em 1928, na cidade de Condecourt, França, foi ordenado sacerdote em 1º de julho de 1956. Chegou ao Brasil em 1964. Em 1975, assumiu como pároco da Paróquia Nossa Senhora das Dores, no Lobato, onde permaneceu até o início de 2009. Durante seu ministério, fundou seis capelas/comunidades: São Vicente de Paulo, São João Maria Vianney, Espírito Santo, Santa Luzia, Nossa Senhora das Graças e Pão da Vida", ImgUrl ="pemathon.jpg"
            },
                new Paroco { Nome = "Padre Anastácio Gilberto", Periodo = "2003 - 2008",
                Descricao ="Padre Anastácio Gilberto atuou como vigário paroquial (padre auxiliar), auxiliando diretamente o saudoso Padre Mathon na missão pastoral. Ele teve papel importante na evangelização local, apoiando às celebrações nas capelas junto ao Padre Mathon, contribuiu significativamente para fortalecer a fé católica no Lobato, sendo lembrado com carinho pela comunidade até hoje.", ImgUrl ="padreanastacio.jpg"
            },
                  new Paroco { Nome = "Padre Cícero Dione", Periodo = "2009 - 2010",
                Descricao ="Assumiu como pároco interino entre fevereiro de 2009 e julho de 2010, período em que substituiu o Pe. Mathon. Durante esse tempo, esteve à frente da comunidade até a chegada do então diácono Ricardo Henrique. ", ImgUrl ="padrecicero.jpg"
            },
                   new Paroco { Nome = "Padre  Ricardo Oliveira", Periodo = "2010 - 2015",
                Descricao ="Ordenado sacerdote em 22 de maio de 2010, assumiu a Paróquia Nossa Senhora das Dores como pároco em julho do mesmo ano. Permaneceu à frente da comunidade paroquial até o ano de 2014. Esta paróquia marcou profundamente sua trajetória sacerdotal, sendo a primeira que administrou como pároco. A experiência vivida ali deixou um legado significativo de fé, serviço e dedicação pastoral.", ImgUrl ="padrericardo.jpg"
            },

                new Paroco { Nome = "Padre Antonio Carlos", Periodo = "2016 - Atual",
                Descricao ="Padre Tony é amplamente conhecido por seu carisma, proximidade com os fiéis e forte liderança pastoral. Ele tem se destacado à frente da Paróquia Nossa Senhora das Dores por promover engajamento da comunidade em campanhas sociais e espirituais.", ImgUrl ="pettony.jpg"
            },

            


            };
        }

    }
}