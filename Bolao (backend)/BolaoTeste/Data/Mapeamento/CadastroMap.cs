using BolaoTeste.Models;
using FluentNHibernate.Mapping;

namespace BolaoTeste.Data.Mapeamento
{
    public class CadastroMap : ClassMap<Cadastro>
    {
        public CadastroMap()
        {

            Schema("teste");
            Table("cadastro");
            Id(x => x.Id).Column("CODCADASTRO");
            Map(x => x.Nome).Column("NOME");
            Map(x => x.Senha).Column("SENHA");
            Map(x => x.Usuario).Column("USUARIO");
            Map(x => x.Email).Column("EMAIL");
            Map(x => x.Pontuacao).Column("PONTUACAO");


        }
    }
}
