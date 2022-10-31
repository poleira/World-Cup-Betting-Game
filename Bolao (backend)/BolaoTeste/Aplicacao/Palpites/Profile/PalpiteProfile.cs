namespace BolaoTeste.Aplicacao.Palpites.Profile;
using AutoMapper;
using BolaoTeste.Dto.Cadastros;
using BolaoTeste.Dto.ListarPalpite;
using BolaoTeste.Dto.Palpites;
using BolaoTeste.Models;

public class PalpiteProfile : Profile
    {
        public PalpiteProfile()
        {
            CreateMap<GaEditarRequest, Ga>();
            CreateMap<QuartasEditarRequest, Quartas>();
            CreateMap<SemisEditarRequest, Semis>();
            CreateMap<FinaisEditarRequest, Finais>();
            CreateMap<CampeaoEditarRequest, Campeao>();
            CreateMap<JogosDoBrEditarRequest, Jogos_BR>();
            CreateMap<Cadastro, ListarPalpiteResponse>();



    }
    }

