using System.ComponentModel.DataAnnotations;

namespace BolaoTeste.Models
{
    public class Cadastro
    {
        
        public virtual int Id { get; set; }
        public virtual string Usuario { get; set; }
        public virtual string Nome { get; set; }
        public virtual string Senha { get; set; }
        public virtual string Email { get; set; }
        public virtual int? Pontuacao { get; set; }


        public Cadastro(){}
    }
}
