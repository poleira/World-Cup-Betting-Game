using AutoMapper;
using BolaoTeste.Aplicacao.Rank.Servicos.Interfaces;
using BolaoTeste.Data.Interfaces;
using BolaoTeste.Data.Repositorios.Interfaces;
using BolaoTeste.Dto.ListarPalpite;
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
        private readonly ICampeonatoRepositorio campeonatoRepositorio;

        public RankServico(ISession session, IMapper mapper, ICadastroRepositorio cadastroRepositorio, ICampeonatoRepositorio campeonatoRepositorio)
        {
            this.session = session;
            this.mapper = mapper;
            this.cadastroRepositorio = cadastroRepositorio;
            this.campeonatoRepositorio = campeonatoRepositorio;
        }

        public IList<RankResponse> ListarRank()
        {
            try
            {
                IList<Cadastro> cadastrosDb = cadastroRepositorio.Query().ToList();
                var retorno = mapper.Map<IList<ListarPalpiteResponse>>(cadastrosDb);

                var campeonatoDb = campeonatoRepositorio.Query().FirstOrDefault();


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
