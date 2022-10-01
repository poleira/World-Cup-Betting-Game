using AutoMapper;
using BolaoTeste.Aplicacao.Cadastros.Servicos.Interfaces;
using BolaoTeste.Data.Dto.Cadastros;
using BolaoTeste.Data.Interfaces;

using ISession = NHibernate.ISession;
using BolaoTeste.Models;
using BolaoTeste.Dto.Cadastros;
using BolaoTeste.Services;
using System.Net.Http.Headers;

namespace BolaoTeste.Aplicacao.Cadastros.Servicos
{
    public class CadastroServico : ICadastroServico
    {
        private readonly ISession session;
        private readonly IMapper mapper;
        private readonly ICadastroRepositorio cadastroRepositorio;

        public CadastroServico( ISession session, IMapper mapper, ICadastroRepositorio cadastroRepositorio)
        {
            this.session = session;
            this.mapper = mapper;
            this.cadastroRepositorio = cadastroRepositorio;
        }

        public CreateCadastroResponse AdicionaCadastro(CreateCadastroRequest inserirRequest)
        {
            
            var cadastroInserir = mapper.Map<Cadastro>(inserirRequest);
            var transacao = session.BeginTransaction();
            

            try
            {                
                IList<Cadastro> cadastroDb = cadastroRepositorio.Query().ToList();
                foreach (var item in cadastroDb)
                {
                    if(item.Usuario == inserirRequest.Usuario)
                    {
                        throw new Exception("Usuario ja existente");
                    }
                }
                cadastroInserir = cadastroRepositorio.Inserir(cadastroInserir);
                if (transacao.IsActive)
                    transacao.Commit();
                return mapper.Map<CreateCadastroResponse>(cadastroInserir);
            }
            catch
            {
                if (transacao.IsActive)
                    transacao.Rollback();
                return null;
            }
        }

        public IList<CreateCadastroResponse> ListarTodos()
        {
            try
            {
                IList<Cadastro> categoriasDb = cadastroRepositorio.Query().ToList();
             
                IList<CreateCadastroResponse> categorias = mapper.Map<IList<CreateCadastroResponse>>(categoriasDb);
                return categorias;
            }
            catch
            {
                return null;
            }
        }

        public ChecarUsuarioResponse Login(ChecarUsuarioRequest usuario)
        {
            var login = mapper.Map<Cadastro>(usuario);
            IList<Cadastro> cadastros = cadastroRepositorio.Query().ToList();
            try
            {
                foreach (var c in cadastros)
                {
                    if (c.Usuario == login.Usuario && c.Senha == login.Senha)
                    {
                        var token = TokenService.GenerateToken(login);

                        var retorno = new ChecarUsuarioResponse();
                        retorno.Token = token;
                        
                        
                        //retorno.Usuario = login.Usuario;

                        return retorno;
                    }                        
                }
  
                throw new Exception("Usuario nao encontrado");

            }
            catch
            {
                return null;
            }


        }


    }
}

