using BolaoTeste.Dto.Palpites;
using BolaoTeste.Models;

namespace BolaoTeste.Aplicacao.Palpites.Servicos.Interfaces
{
    public interface IPalpiteServico
    {
        Cadastro EditaGa(GaEditarRequest request);
        Cadastro EditaGb(GbEditarRequest request);
        Cadastro EditaGc(GcEditarRequest request);
        Cadastro EditaGd(GdEditarRequest request);
        Cadastro EditaGe(GeEditarRequest request);
        Cadastro EditaGf(GfEditarRequest request);
        Cadastro EditaGg(GgEditarRequest request);
        Cadastro EditaGh(GhEditarRequest request);

    }
}
