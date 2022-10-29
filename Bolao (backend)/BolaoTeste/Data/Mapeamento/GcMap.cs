using BolaoTeste.Models;
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
        }
    }
}
