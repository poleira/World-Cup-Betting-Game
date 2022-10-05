using AutoMapper;
using BolaoTeste.Aplicacao.Rank.Servicos.Interfaces;
using BolaoTeste.Data.Interfaces;
using BolaoTeste.Dto.Rank;
using BolaoTeste.Models;
using ISession = NHibernate.ISession;

namespace BolaoTeste.Aplicacao.Rank.Servicos
{
    public class RankServico : IRankServico
    {
        private readonly ISession session;
        private readonly IMapper mapper;
        private readonly ICadastroRepositorio cadastroRepositorio;

        public RankServico(ISession session, IMapper mapper, ICadastroRepositorio cadastroRepositorio)
        {
            this.session = session;
            this.mapper = mapper;
            this.cadastroRepositorio = cadastroRepositorio;
        }

        public IList<RankResponse> ListarRank()
        {
            try
            {
                IList<Cadastro> cadastrosDb = cadastroRepositorio.Query().ToList();

                IList<RankResponse> categorias = mapper.Map<IList<RankResponse>>(cadastrosDb);
                return categorias;
            }
            catch
            {
                return null;
            }
        }


    }
}
