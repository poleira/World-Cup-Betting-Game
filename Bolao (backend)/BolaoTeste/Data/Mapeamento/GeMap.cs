﻿using BolaoTeste.Models;
using FluentNHibernate.Mapping;

namespace BolaoTeste.Data.Mapeamento
{
    public class GeMap : ClassMap<Ge>
    {
        public GeMap()
        {
            Schema("teste");
            Table("ge");
            Id(x => x.Id).Column("ID");
            Map(x => x.Japao).Column("JAPAO");
            Map(x => x.Alemanha).Column("ALEMANHA");
            Map(x => x.Espanha).Column("ESPANHA");
            Map(x => x.CostaRica).Column("COSTARICA");
        }
    }
}
