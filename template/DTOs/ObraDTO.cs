using template.Models;

namespace template.DTOs
{
    public class ObraDTO
    {
        public Guid Id { get; set; }

        public string Nombre { get; set; }

        public string DatosVarios { get; set; }

        public int CantidadAlbaniles { get; set; }

        public TiposObraDto IdTipoObraNavigation { get; set; }
    }
}