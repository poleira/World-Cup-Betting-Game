using AutoMapper;
using BolaoTeste.Data.Dto.Cadastros;
using BolaoTeste.Dto.Cadastros;
using BolaoTeste.Models;
using Microsoft.AspNetCore.Http.Connections;

namespace BolaoTeste.Profiles
{
    public class CadastroProfile : Profile
    {
        public CadastroProfile()
        {
            CreateMap<CreateCadastroRequest, Cadastro>();
            CreateMap<Cadastro, CreateCadastroResponse>();
            CreateMap<Cadastro, ChecarUsuarioResponse>();
            CreateMap<ChecarUsuarioRequest, Cadastro>();
        }
    }
}
