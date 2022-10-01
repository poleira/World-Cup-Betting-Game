using BolaoTeste.Aplicacao.Cadastros.Servicos.Interfaces;
using BolaoTeste.Dto.Cadastros;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using NHibernate.Mapping;
using System.Net;



namespace BolaoTeste.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    [EnableCors("MyCorsImplementationPolicy")]
    public class LoginController : Controller
    {
        private readonly ICadastroServico cadastroServico;
        public LoginController(ICadastroServico cadastroServico)
        {
            this.cadastroServico = cadastroServico;
        }

        [HttpPost]
        public HttpResponseMessage Login([FromBody] ChecarUsuarioRequest loginDto)
        {
 
            var retorno = cadastroServico.Login(loginDto);
            

            var response = ;
            if (retorno == null) 
            {
                response.StatusCode = System.Net.HttpStatusCode.BadRequest;
                return response;
            }

            return response.Headers.Add("X-Auth-Token", retorno.Token);

            
        }

        



    }
}
