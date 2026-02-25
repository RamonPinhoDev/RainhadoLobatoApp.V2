using CommunityToolkit.Mvvm.ComponentModel;
using ScheduleListUI.Models;
using ScheduleListUI.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{

    public class IgrejaViewModel : ObservableObject
    {
       
        

        public ObservableCollection<Igrejas> Igrejas { get; set; }
     
        

        public IgrejaViewModel()
        {
          


           
            Igrejas = new ObservableCollection<Igrejas>
            {
        new Igrejas
        {
            Nome = "Igreja Matriz – Nossa Senhora das Dores",
            Fundacao = "Fundação: 1971",
            Descricao = "Sede principal da paróquia. É o local das grandes celebrações litúrgicas, como missas dominicais, casamentos, batizados e eventos comunitários. \r\n\r\nTambém é o centro das festividades da Padroeira, celebrada em 15 de setembro com novenário e procissão.  ",
            ImgUrl = "matriz.jpg"
        },
        new Igrejas
        {
            Nome = "Capela São João Maria Vianney",
            Fundacao = "Fundação: 1985 ",
            Descricao = "Dedicada ao padroeiro dos sacerdotes, a igreja realiza missas semanais, encontros formativos e outras celebrações regulares. É marcada por uma comunidade atuante, com forte participação dos leigos locais.  ",
            ImgUrl = "vianey.jpg"
        },
        new Igrejas
        {
            Nome = "Capela Nossa Senhora das Graças",
            Fundacao = "Fundação: 2001 ",
            Descricao = "Criada para atender espiritualmente uma região mais distante da Matriz, a capela mantém intensa atividade pastoral, com catequeses, celebrações, encontros marianos e ações sociais.\r\n\r\n Possui devoção especial à Virgem das Graças, celebrada com fé e tradição no mês de novembro. Embora pequena, destaca-se pela presença ativa das pastorais e pelo envolvimento da comunidade.  ",
            ImgUrl = "mariadasgracs.jpg"
        },
        new Igrejas
        {
            Nome = "Capela Santa Luzia",
            Fundacao = "Fundação: 1979",
            Descricao = "Uma das capelas mais antigas da paróquia, é dedicada a Santa Luzia, protetora da visão. A festa de Santa Luzia, celebrada em 13 de dezembro, é um momento marcante de devoção e tradição. ",
            ImgUrl = "santaluzia.jpg"
        },
        new Igrejas
        {
            Nome = "Capela São Vicente",
            Fundacao = "Fundação: 1985 ",
            Descricao = "Dedicada a São Vicente, santo da caridade e do serviço aos pobres, a capela é um importante ponto de partida da tradicional procissão da Padroeira. \r\n\r\nSedia celebrações comunitárias, novenas e campanhas solidárias, mantendo-se fortemente ligada às ações sociais da paróquia. ",
            ImgUrl = "saovicente.jpg"
        },
        };
           




           


            


        }

       
       
        





        


    }
}


