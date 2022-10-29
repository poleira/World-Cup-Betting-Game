namespace BolaoTeste.Aplicacao.Palpites.Profile;
using AutoMapper;
using BolaoTeste.Dto.Palpites;
using BolaoTeste.Models;

public class PalpiteProfile : Profile
    {
        public PalpiteProfile()
        {
            CreateMap<GaEditarRequest, Ga>();
        }
    }

