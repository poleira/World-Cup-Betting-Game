using System.ComponentModel.DataAnnotations;

namespace BolaoTeste.Models
{
    public class Palpite
    {
        [Key]
        [Required]
        public virtual int Id { get; set; }

        [Required(ErrorMessage = "O campo de idcadastro é obrigatório")]
        public virtual Cadastro Cadastro{ get; set; }
        
        [Required(ErrorMessage = "O campo de nome é obrigatório")]
        public virtual string NomePalpite { get; set; }

        public Palpite() { }


    }
}
