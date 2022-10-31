﻿using BolaoTeste.Models;
using FluentNHibernate.Mapping;

namespace BolaoTeste.Data.Mapeamento
{
    public class GcMap : ClassMap<Gc>
    {
        public GcMap()
        {
            Schema("teste");
            Table("gc");
            Id(x => x.Id).Column("ID");
            Map(x => x.ArabiaSaudita).Column("ARABIASAUDITA");
            Map(x => x.Polonia).Column("POLONIA");
            Map(x => x.Argentina).Column("ARGENTINA");
            Map(x => x.Mexico).Column("MEXICO");
            Map(x => x.ArabiaSauditaPontos).Column("ARABIASAUDITAPONTOS");
            Map(x => x.PoloniaPontos).Column("POLONIAPONTOS");
            Map(x => x.ArgentinaPontos).Column("ARGENTINAPONTOS");
            Map(x => x.MexicoPontos).Column("MEXICOPONTOS");
        }
    }
}
