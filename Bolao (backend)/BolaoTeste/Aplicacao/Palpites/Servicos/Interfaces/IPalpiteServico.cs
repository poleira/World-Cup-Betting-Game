using BolaoTeste.Dto;
using BolaoTeste.Dto.ListarPalpite;
using BolaoTeste.Dto.Palpites;
using BolaoTeste.Models;

namespace BolaoTeste.Aplicacao.Palpites.Servicos.Interfaces
{
    public interface IPalpiteServico
    {
        OkResponse EditaGa(GaEditarRequest request);
        OkResponse EditaGb(GbEditarRequest request);
        OkResponse EditaGc(GcEditarRequest request);
        OkResponse EditaGd(GdEditarRequest request);
        OkResponse EditaGe(GeEditarRequest request);
        OkResponse EditaGf(GfEditarRequest request);
        OkResponse EditaGg(GgEditarRequest request);
        OkResponse EditaGh(GhEditarRequest request);
        OkResponse EditaQuartas(QuartasEditarRequest request);
        OkResponse EditaSemis(SemisEditarRequest request);
        OkResponse EditaFinais(FinaisEditarRequest request);
        OkResponse EditaCampeao(CampeaoEditarRequest request);
        OkResponse EditaJogosDoBr(JogosDoBrEditarRequest request);
        ListarPalpiteResponse ListarPalpites(ListarPalpiteRequest request);


    }
}
