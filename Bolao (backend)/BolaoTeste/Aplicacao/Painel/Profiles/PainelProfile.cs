using BolaoTeste.Data.Dto.Cadastros;
using BolaoTeste.Dto.Cadastros;
using BolaoTeste.Models;
using AutoMapper;

namespace BolaoTeste.Aplicacao.Painel.Profiles
{
    public class PainelProfile: Profile
    {
        public PainelProfile()
        {
            CreateMap<CreateCadastroRequest, Cadastro>();
        }
    }
}
