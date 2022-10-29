using BolaoTeste.Dto.Palpites;

namespace BolaoTeste.Data.Repositorios.Interfaces
{
    public interface IPalpiteRepositorio
    {
        public void EditarGa(GaEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGb(GbEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGc(GcEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGd(GdEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGe(GeEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGf(GfEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGg(GgEditarRequest request, string Idg, string g, string primeiro, string segundo);
        public void EditarGh(GhEditarRequest request, string Idg, string g, string primeiro, string segundo);
    }
}
