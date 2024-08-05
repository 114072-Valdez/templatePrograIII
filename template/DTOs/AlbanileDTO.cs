namespace template.DTOs
{
    public class AlbanileDTO
    {
        public Guid Id { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string Dni { get; set; }

        public string? Telefono { get; set; }

        public string? Calle { get; set; }

        public string? Numero { get; set; }

        public string? CodPost { get; set; }

        public bool Activo { get; set; }

        public DateTime? FechaAlta { get; set; }
    }
}
