namespace BolaoTeste.Models
{
    public class Campeonato
    {
        public virtual int Codcampeonato { get; set; }
        public virtual string Nome_campeonato { get; set; }
        public virtual string Usuario { get; set; }
        public virtual string Senha { get; set; }
        public Campeonato()
        {

        }
    }
}

