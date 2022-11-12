using BolaoTeste.Dto.ListarPalpite;
using BolaoTeste.Dto.Rank;
using BolaoTeste.Models;

namespace BolaoTeste.Aplicacao.Rank.Servicos.Services
{
    public static class RankService
    {
        public static IList<RankResponse> ListarRank(IList<ListarPalpiteResponse> listaPalpiteUsuario, ListarPalpiteResponse resultado)
        {
            var listaOitavasResposta = new List<string>();
            var listaQuartasResposta = new List<string>();
            var listaSemisResposta = new List<string>();
            var listaFinaisResposta = new List<string>();
            var response = new List<RankResponse>();
            

            listaOitavasResposta.Add(resultado.OitavasTime1);
            listaOitavasResposta.Add(resultado.OitavasTime2);
            listaOitavasResposta.Add(resultado.OitavasTime3);
            listaOitavasResposta.Add(resultado.OitavasTime4);
            listaOitavasResposta.Add(resultado.OitavasTime5);
            listaOitavasResposta.Add(resultado.OitavasTime6);
            listaOitavasResposta.Add(resultado.OitavasTime7);
            listaOitavasResposta.Add(resultado.OitavasTime8);
            listaOitavasResposta.Add(resultado.OitavasTime9);
            listaOitavasResposta.Add(resultado.OitavasTime10);
            listaOitavasResposta.Add(resultado.OitavasTime11);
            listaOitavasResposta.Add(resultado.OitavasTime12);
            listaOitavasResposta.Add(resultado.OitavasTime13);
            listaOitavasResposta.Add(resultado.OitavasTime14);
            listaOitavasResposta.Add(resultado.OitavasTime15);
            listaOitavasResposta.Add(resultado.OitavasTime16);

            listaQuartasResposta.Add(resultado.QuartasTime1);
            listaQuartasResposta.Add(resultado.QuartasTime2);
            listaQuartasResposta.Add(resultado.QuartasTime3);
            listaQuartasResposta.Add(resultado.QuartasTime4);
            listaQuartasResposta.Add(resultado.QuartasTime5);
            listaQuartasResposta.Add(resultado.QuartasTime6);
            listaQuartasResposta.Add(resultado.QuartasTime7);
            listaQuartasResposta.Add(resultado.QuartasTime8);

            listaSemisResposta.Add(resultado.SemisTime1);
            listaSemisResposta.Add(resultado.SemisTime2);
            listaSemisResposta.Add(resultado.SemisTime3);
            listaSemisResposta.Add(resultado.SemisTime4);

            listaFinaisResposta.Add(resultado.FinaisTime1);
            listaFinaisResposta.Add(resultado.FinaisTime2);


            foreach (var item in listaPalpiteUsuario)
            {
                int pontos = 0;
                var listaOitavas = new List<string>();
                var listaQuartas = new List<string>();
                var listaSemis = new List<string>();
                var listaFinais = new List<string>();
                var rank = new RankResponse();


                foreach (var oitavas in listaOitavas)
                {
                    foreach (var oitavasResposta in listaOitavasResposta)
                    {
                        if (oitavas == oitavasResposta)
                            pontos = pontos + 2;
                    }
                }

                foreach (var quartas in listaQuartas)
                {
                    foreach (var quartasResposta in listaQuartasResposta)
                    {
                        if (quartas == quartasResposta)
                            pontos = pontos + 4;
                    }
                }

                foreach (var semis in listaSemis)
                {
                    foreach (var semisResposta in listaSemisResposta)
                    {
                        if (semis == semisResposta)
                            pontos = pontos + 6;
                    }
                }

                foreach (var finais in listaFinais)
                {
                    foreach (var finaisResposta in listaFinaisResposta)
                    {
                        if (finais == finaisResposta)
                            pontos = pontos + 8;
                    }
                }

            }

            return null;
        }
    }
}
