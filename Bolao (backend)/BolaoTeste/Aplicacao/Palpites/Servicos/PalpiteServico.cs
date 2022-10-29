using AutoMapper;
using BolaoTeste.Aplicacao.Palpites.Servicos.Interfaces;
using BolaoTeste.Data.Interfaces;
using BolaoTeste.Data.Repositorios.Interfaces;
using BolaoTeste.Dto.Palpites;
using BolaoTeste.Models;
using ISession = NHibernate.ISession;

namespace BolaoTeste.Aplicacao.Palpites.Servicos
{
    public class PalpiteServico : IPalpiteServico
    {
        private readonly ISession session;
        private readonly IMapper mapper;
        private readonly ICadastroRepositorio cadastroRepositorio;
        private readonly IPalpiteRepositorio palpiteRepositorio;

        public PalpiteServico(ISession session, IMapper mapper, ICadastroRepositorio cadastroRepositorio, IPalpiteRepositorio palpiteRepositorio)
        {
            this.session = session;
            this.mapper = mapper;
            this.cadastroRepositorio = cadastroRepositorio;
            this.palpiteRepositorio = palpiteRepositorio;
        }

        public Cadastro EditaGa(GaEditarRequest request)
        {
            string gaString = "ga";
            string idgaString = "idga";
            string primeiro = "";
            string segundo = "";

            if (request.Qatar == 1)
                primeiro = nameof(request.Qatar);
            if (request.Qatar == 2)
                segundo = nameof(request.Qatar);
            if (request.Equador == 1)
                primeiro = nameof(request.Equador);
            if (request.Equador == 2)
                segundo = nameof(request.Equador);
            if (request.Senegal == 1)
                primeiro = nameof(request.Senegal);
            if (request.Senegal == 2)
                segundo = nameof(request.Senegal);
            if (request.Holanda == 1)
                primeiro = nameof(request.Holanda);
            if (request.Holanda == 2)
                segundo = nameof(request.Holanda);

            palpiteRepositorio.EditarGa(request,idgaString,gaString, primeiro, segundo);


            return null;
        }

        public Cadastro EditaGb(GbEditarRequest request)
        {
            string gbString = "gb";
            string idgbString = "idgb";
            string primeiro = "";
            string segundo = "";

            if (request.PaisDeGales == 1)
                primeiro = nameof(request.PaisDeGales);
            if (request.PaisDeGales == 2)
                segundo = nameof(request.PaisDeGales);
            if (request.Inglaterra == 1)
                primeiro = nameof(request.Inglaterra);
            if (request.Inglaterra == 2)
                segundo = nameof(request.Inglaterra);
            if (request.USA == 1)
                primeiro = nameof(request.USA);
            if (request.USA == 2)
                segundo = nameof(request.USA);
            if (request.Iram == 1)
                primeiro = nameof(request.Iram);
            if (request.Iram == 2)
                segundo = nameof(request.Iram);

            palpiteRepositorio.EditarGb(request, idgbString, gbString,primeiro, segundo);


            return null;
        }
        public Cadastro EditaGc(GcEditarRequest request)
        {
            string gcString = "gc";
            string idgcString = "idgc";
            string primeiro = "";
            string segundo = "";

            if (request.Argentina == 1)
                primeiro = nameof(request.Argentina);
            if (request.Argentina == 2)
                segundo = nameof(request.Argentina);
            if (request.ArabiaSaudita == 1)
                primeiro = nameof(request.ArabiaSaudita);
            if (request.ArabiaSaudita == 2)
                segundo = nameof(request.ArabiaSaudita);
            if (request.Mexico == 1)
                primeiro = nameof(request.Mexico);
            if (request.Mexico == 2)
                segundo = nameof(request.Mexico);
            if (request.Polonia == 1)
                primeiro = nameof(request.Polonia);
            if (request.Polonia == 2)
                segundo = nameof(request.Polonia);

            palpiteRepositorio.EditarGc(request, idgcString, gcString, primeiro, segundo);


            return null;
        }
        public Cadastro EditaGd(GdEditarRequest request)
        {
            string gdString = "gd";
            string idgdString = "idgd";
            string primeiro = "";
            string segundo = "";

            if (request.Franca == 1)
                primeiro = nameof(request.Franca);
            if (request.Franca == 2)
                segundo = nameof(request.Franca);
            if (request.Australia == 1)
                primeiro = nameof(request.Australia);
            if (request.Australia == 2)
                segundo = nameof(request.Australia);
            if (request.Dinamarca == 1)
                primeiro = nameof(request.Dinamarca);
            if (request.Dinamarca == 2)
                segundo = nameof(request.Dinamarca);
            if (request.Tunisia == 1)
                primeiro = nameof(request.Tunisia);
            if (request.Tunisia == 2)
                segundo = nameof(request.Tunisia);

            palpiteRepositorio.EditarGd(request, idgdString, gdString, primeiro, segundo);


            return null;
        }
        public Cadastro EditaGe(GeEditarRequest request)
        {
            string geString = "ge";
            string idgeString = "idge";
            string primeiro = "";
            string segundo = "";

            if (request.Espanha == 1)
                primeiro = nameof(request.Espanha);
            if (request.Espanha == 2)
                segundo = nameof(request.Espanha);
            if (request.CostaRica == 1)
                primeiro = nameof(request.CostaRica);
            if (request.CostaRica == 2)
                segundo = nameof(request.CostaRica);
            if (request.Alemanha == 1)
                primeiro = nameof(request.Alemanha);
            if (request.Alemanha == 2)
                segundo = nameof(request.Alemanha);
            if (request.Japao == 1)
                primeiro = nameof(request.Japao);
            if (request.Japao == 2)
                segundo = nameof(request.Japao);

            palpiteRepositorio.EditarGe(request, idgeString, geString, primeiro,segundo);


            return null;
        }
        public Cadastro EditaGf(GfEditarRequest request)
        {
            string gfString = "gf";
            string idgfString = "idgf";
            string primeiro = "";
            string segundo = "";

            if (request.Belgica == 1)
                primeiro = nameof(request.Belgica);
            if (request.Belgica == 2)
                segundo = nameof(request.Belgica);
            if (request.Canada == 1)
                primeiro = nameof(request.Canada);
            if (request.Canada == 2)
                segundo = nameof(request.Canada);
            if (request.Croacia == 1)
                primeiro = nameof(request.Croacia);
            if (request.Croacia == 2)
                segundo = nameof(request.Croacia);
            if (request.Marrocos == 1)
                primeiro = nameof(request.Marrocos);
            if (request.Marrocos == 2)
                segundo = nameof(request.Marrocos);

            palpiteRepositorio.EditarGf(request, idgfString, gfString,primeiro,segundo);


            return null;
        }
        public Cadastro EditaGg(GgEditarRequest request)
        {
            string ggString = "gg";
            string idggString = "idgg";
            string primeiro = "";
            string segundo = "";

            if (request.Brasil == 1)
                primeiro = nameof(request.Brasil);
            if (request.Brasil == 2)
                segundo = nameof(request.Brasil);
            if (request.Servia == 1)
                primeiro = nameof(request.Servia);
            if (request.Servia == 2)
                segundo = nameof(request.Servia);
            if (request.Suica == 1)
                primeiro = nameof(request.Suica);
            if (request.Suica == 2)
                segundo = nameof(request.Suica);
            if (request.Camaroes == 1)
                primeiro = nameof(request.Camaroes);
            if (request.Camaroes == 2)
                segundo = nameof(request.Camaroes);

            palpiteRepositorio.EditarGg(request, idggString, ggString, primeiro, segundo);


            return null;
        }
        public Cadastro EditaGh(GhEditarRequest request)
        {
            string ghString = "gh";
            string idghString = "idgh";
            string primeiro = "";
            string segundo = "";

            if (request.Portugal == 1)
                primeiro = nameof(request.Portugal);
            if (request.Portugal == 2)
                segundo = nameof(request.Portugal);
            if (request.Gana == 1)
                primeiro = nameof(request.Gana);
            if (request.Gana == 2)
                segundo = nameof(request.Gana);
            if (request.Uruguai == 1)
                primeiro = nameof(request.Uruguai);
            if (request.Uruguai == 2)
                segundo = nameof(request.Uruguai);
            if (request.CoreiaDoSul == 1)
                primeiro = nameof(request.CoreiaDoSul);
            if (request.CoreiaDoSul == 2)
                segundo = nameof(request.CoreiaDoSul);

            palpiteRepositorio.EditarGh(request, idghString, ghString,primeiro,segundo);


            return null;
        }







    }
}
