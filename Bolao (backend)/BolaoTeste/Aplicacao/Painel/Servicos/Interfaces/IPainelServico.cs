using BolaoTeste.Dto.Rank;

namespace BolaoTeste.Aplicacao.Painel.Servicos.Interfaces
{
    public interface IPainelServico
    {
        IList<RankResponse> ListarPainel();
    }
}
