using AutoMapper;
using BolaoTeste.Data.Dto.Cadastros;
using BolaoTeste.Dto.Cadastros;
using BolaoTeste.Dto.Rank;
using BolaoTeste.Models;

namespace BolaoTeste.Rank.Profiles
{
    public class RankProfile : Profile
    {
        public RankProfile()
        {
            CreateMap<RankResponse, Cadastro>();
            CreateMap<Cadastro, RankResponse>();
        }
    }
}
