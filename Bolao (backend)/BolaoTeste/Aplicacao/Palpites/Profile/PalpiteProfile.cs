﻿namespace BolaoTeste.Aplicacao.Palpites.Profile;
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
            CreateMap<Cadastro, ListarPalpiteResponse>().ForMember(dest => dest.Qatar, m => m.MapFrom(src => src.Ga.Qatar))
        .ForMember(dest => dest.QatarPontos, m => m.MapFrom(src => src.Ga.QatarPontos))
        .ForMember(dest => dest.Equador, m => m.MapFrom(src => src.Ga.Equador))
        .ForMember(dest => dest.EquadorPontos, m => m.MapFrom(src => src.Ga.EquadorPontos))
        .ForMember(dest => dest.Senegal, m => m.MapFrom(src => src.Ga.Senegal))
        .ForMember(dest => dest.SenegalPontos, m => m.MapFrom(src => src.Ga.SenegalPontos))
        .ForMember(dest => dest.Holanda, m => m.MapFrom(src => src.Ga.HolandaPontos))
        .ForMember(dest => dest.HolandaPontos, m => m.MapFrom(src => src.Ga.HolandaPontos))
        .ForMember(dest => dest.Inglaterra, m => m.MapFrom(src => src.Gb.Inglaterra))
        .ForMember(dest => dest.InglaterraPontos, m => m.MapFrom(src => src.Gb.InglaterraPontos))
        .ForMember(dest => dest.Iram, m => m.MapFrom(src => src.Gb.Iram))
        .ForMember(dest => dest.IramPontos, m => m.MapFrom(src => src.Gb.IramPontos))
        .ForMember(dest => dest.USA, m => m.MapFrom(src => src.Gb.Usa))
        .ForMember(dest => dest.USAPontos, m => m.MapFrom(src => src.Gb.UsaPontos))
        .ForMember(dest => dest.PaisDeGales, m => m.MapFrom(src => src.Gb.PaisDeGales))
        .ForMember(dest => dest.PaisDeGalesPontos, m => m.MapFrom(src => src.Gb.PaisDeGalesPontos))
        .ForMember(dest => dest.Argentina, m => m.MapFrom(src => src.Gc.Argentina))
        .ForMember(dest => dest.ArgentinaPontos, m => m.MapFrom(src => src.Gc.ArgentinaPontos))
        .ForMember(dest => dest.ArabiaSaudita, m => m.MapFrom(src => src.Gc.ArabiaSaudita))
        .ForMember(dest => dest.ArabiaSauditaPontos, m => m.MapFrom(src => src.Gc.ArabiaSauditaPontos))
        .ForMember(dest => dest.Mexico, m => m.MapFrom(src => src.Gc.Mexico))
        .ForMember(dest => dest.MexicoPontos, m => m.MapFrom(src => src.Gc.MexicoPontos))
        .ForMember(dest => dest.Polonia, m => m.MapFrom(src => src.Gc.Polonia))
        .ForMember(dest => dest.PoloniaPontos, m => m.MapFrom(src => src.Gc.PoloniaPontos))
        .ForMember(dest => dest.Franca, m => m.MapFrom(src => src.Gd.Franca))
        .ForMember(dest => dest.FrancaPontos, m => m.MapFrom(src => src.Gd.FrancaPontos))
        .ForMember(dest => dest.Australia, m => m.MapFrom(src => src.Gd.Australia))
        .ForMember(dest => dest.AustraliaPontos, m => m.MapFrom(src => src.Gd.AustraliaPontos))
        .ForMember(dest => dest.Dinamarca, m => m.MapFrom(src => src.Gd.Dinamarca))
        .ForMember(dest => dest.DinamarcaPontos, m => m.MapFrom(src => src.Gd.DinamarcaPontos))
        .ForMember(dest => dest.Tunisia, m => m.MapFrom(src => src.Gd.TunisiaPontos))
        .ForMember(dest => dest.TunisiaPontos, m => m.MapFrom(src => src.Gd.TunisiaPontos))
        .ForMember(dest => dest.Espanha, m => m.MapFrom(src => src.Ge.Espanha))
        .ForMember(dest => dest.EspanhaPontos, m => m.MapFrom(src => src.Ge.EspanhaPontos))
        .ForMember(dest => dest.CostaRica, m => m.MapFrom(src => src.Ge.CostaRica))
        .ForMember(dest => dest.CostaRicaPontos, m => m.MapFrom(src => src.Ge.CostaRicaPontos))
        .ForMember(dest => dest.Alemanha, m => m.MapFrom(src => src.Ge.Alemanha))
        .ForMember(dest => dest.AlemanhaPontos, m => m.MapFrom(src => src.Ge.AlemanhaPontos))
        .ForMember(dest => dest.Japao, m => m.MapFrom(src => src.Ge.JapaoPontos))
        .ForMember(dest => dest.JapaoPontos, m => m.MapFrom(src => src.Ge.JapaoPontos))
        .ForMember(dest => dest.Belgica, m => m.MapFrom(src => src.Gf.Belgica))
        .ForMember(dest => dest.BelgicaPontos, m => m.MapFrom(src => src.Gf.BelgicaPontos))
        .ForMember(dest => dest.Canada, m => m.MapFrom(src => src.Gf.Canada))
        .ForMember(dest => dest.CanadaPontos, m => m.MapFrom(src => src.Gf.CanadaPontos))
        .ForMember(dest => dest.Marrocos, m => m.MapFrom(src => src.Gf.Marrocos))
        .ForMember(dest => dest.MarrocosPontos, m => m.MapFrom(src => src.Gf.MarrocosPontos))
        .ForMember(dest => dest.Croacia, m => m.MapFrom(src => src.Gf.CroaciaPontos))
        .ForMember(dest => dest.CroaciaPontos, m => m.MapFrom(src => src.Gf.CroaciaPontos))
        .ForMember(dest => dest.Brasil, m => m.MapFrom(src => src.Gg.Brasil))
        .ForMember(dest => dest.BrasilPontos, m => m.MapFrom(src => src.Gg.BrasilPontos))
        .ForMember(dest => dest.Servia, m => m.MapFrom(src => src.Gg.Servia))
        .ForMember(dest => dest.ServiaPontos, m => m.MapFrom(src => src.Gg.ServiaPontos))
        .ForMember(dest => dest.Suica, m => m.MapFrom(src => src.Gg.Suica))
        .ForMember(dest => dest.SuicaPontos, m => m.MapFrom(src => src.Gg.SuicaPontos))
        .ForMember(dest => dest.Camaroes, m => m.MapFrom(src => src.Gg.CamaroesPontos))
        .ForMember(dest => dest.CamaroesPontos, m => m.MapFrom(src => src.Gg.CamaroesPontos))
        .ForMember(dest => dest.Portugal, m => m.MapFrom(src => src.Gh.Portugal))
        .ForMember(dest => dest.PortugalPontos, m => m.MapFrom(src => src.Gh.PortugalPontos))
        .ForMember(dest => dest.Gana, m => m.MapFrom(src => src.Gh.Gana))
        .ForMember(dest => dest.GanaPontos, m => m.MapFrom(src => src.Gh.GanaPontos))
        .ForMember(dest => dest.Uruguai, m => m.MapFrom(src => src.Gh.Uruguai))
        .ForMember(dest => dest.UruguaiPontos, m => m.MapFrom(src => src.Gh.UruguaiPontos))
        .ForMember(dest => dest.CoreiaDoSul, m => m.MapFrom(src => src.Gh.CoreiaDoSul))
        .ForMember(dest => dest.CoreiaDoSulPontos, m => m.MapFrom(src => src.Gh.CoreiaDoSulPontos))
        .ForMember(dest => dest.Jogo1, m => m.MapFrom(src => src.Jogos_BR.jogo1))
        .ForMember(dest => dest.Jogo2, m => m.MapFrom(src => src.Jogos_BR.jogo2))
        .ForMember(dest => dest.Jogo3, m => m.MapFrom(src => src.Jogos_BR.jogo3))
        .ForMember(dest => dest.Oitavas, m => m.MapFrom(src => src.Jogos_BR.oitavas))
        .ForMember(dest => dest.Quartas, m => m.MapFrom(src => src.Jogos_BR.quartas))
        .ForMember(dest => dest.Semis, m => m.MapFrom(src => src.Jogos_BR.semis))
        .ForMember(dest => dest.Final, m => m.MapFrom(src => src.Jogos_BR.final))
        .ForMember(dest => dest.OitavasTime1, m => m.MapFrom(src => src.Oitavas.time1))
        .ForMember(dest => dest.OitavasTime2, m => m.MapFrom(src => src.Oitavas.time2))
        .ForMember(dest => dest.OitavasTime3, m => m.MapFrom(src => src.Oitavas.time3))
        .ForMember(dest => dest.OitavasTime4, m => m.MapFrom(src => src.Oitavas.time4))
        .ForMember(dest => dest.OitavasTime5, m => m.MapFrom(src => src.Oitavas.time5))
        .ForMember(dest => dest.OitavasTime6, m => m.MapFrom(src => src.Oitavas.time6))
        .ForMember(dest => dest.OitavasTime7, m => m.MapFrom(src => src.Oitavas.time7))
        .ForMember(dest => dest.OitavasTime8, m => m.MapFrom(src => src.Oitavas.time8))
        .ForMember(dest => dest.OitavasTime9, m => m.MapFrom(src => src.Oitavas.time9))
        .ForMember(dest => dest.OitavasTime10, m => m.MapFrom(src => src.Oitavas.time10))
        .ForMember(dest => dest.OitavasTime11, m => m.MapFrom(src => src.Oitavas.time11))
        .ForMember(dest => dest.OitavasTime12, m => m.MapFrom(src => src.Oitavas.time12))
        .ForMember(dest => dest.OitavasTime13, m => m.MapFrom(src => src.Oitavas.time13))
        .ForMember(dest => dest.OitavasTime14, m => m.MapFrom(src => src.Oitavas.time14))
        .ForMember(dest => dest.OitavasTime15, m => m.MapFrom(src => src.Oitavas.time15))
        .ForMember(dest => dest.OitavasTime16, m => m.MapFrom(src => src.Oitavas.time16))
        .ForMember(dest => dest.QuartasTime1, m => m.MapFrom(src => src.Quartas.time1))
        .ForMember(dest => dest.QuartasTime2, m => m.MapFrom(src => src.Quartas.time2))
        .ForMember(dest => dest.QuartasTime3, m => m.MapFrom(src => src.Quartas.time3))
        .ForMember(dest => dest.QuartasTime4, m => m.MapFrom(src => src.Quartas.time4))
        .ForMember(dest => dest.QuartasTime5, m => m.MapFrom(src => src.Quartas.time5))
        .ForMember(dest => dest.QuartasTime6, m => m.MapFrom(src => src.Quartas.time6))
        .ForMember(dest => dest.QuartasTime7, m => m.MapFrom(src => src.Quartas.time7))
        .ForMember(dest => dest.QuartasTime8, m => m.MapFrom(src => src.Quartas.time8))
        .ForMember(dest => dest.SemisTime1, m => m.MapFrom(src => src.Semis.time1))
        .ForMember(dest => dest.SemisTime2, m => m.MapFrom(src => src.Semis.time2))
        .ForMember(dest => dest.SemisTime3, m => m.MapFrom(src => src.Semis.time3))
        .ForMember(dest => dest.SemisTime4, m => m.MapFrom(src => src.Semis.time4))
        .ForMember(dest => dest.FinaisTime1, m => m.MapFrom(src => src.Finais.Time1))
        .ForMember(dest => dest.FinaisTime2, m => m.MapFrom(src => src.Finais.Time2))
        .ForMember(dest => dest.Campeao, m => m.MapFrom(src => src.Campeao.Time));





    }
    }

