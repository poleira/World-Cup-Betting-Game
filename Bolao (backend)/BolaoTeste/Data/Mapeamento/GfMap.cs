using BolaoTeste.Models;
using FluentNHibernate.Mapping;

namespace BolaoTeste.Data.Mapeamento
{
    public class GfMap : ClassMap<Gf>
    {
        public GfMap()
        {
            Schema("teste");
            Table("gf");
            Id(x => x.Id).Column("ID");
            Map(x => x.Croacia).Column("CROACIA");
            Map(x => x.Canada).Column("CANADA");
            Map(x => x.Marrocos).Column("MARROCOS");
            Map(x => x.Belgica).Column("BELGICA");
        }
    }
}
