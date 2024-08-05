using AutoMapper;
using Microsoft.EntityFrameworkCore;
using template.Models;

namespace template.Repositories.Impl
{
    public class RepoRepositoryImpl : RepoRepository
    {
        private readonly Progra3PracticaContext _context;
        private readonly IMapper _mapper;

        public RepoRepositoryImpl(Progra3PracticaContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public async Task<List<Albanile>> GetAlbaniles(string idObra)
        {
            Guid id;
            if (!Guid.TryParse(idObra, out id))
                return null;

            var response1 = await _context.AlbanilesXObras.Where(x => x.IdObra == id).Select(x => x.IdAlbanil).ToListAsync();
            var response2 = await _context.Albaniles.Where(x => !response1.Contains(x.Id)).ToListAsync();

            return response2;
        }

        public async Task<List<Albanile>> GetAllAlbaniles()
        {
            var albaniles = await _context.Albaniles.ToListAsync();

            return albaniles;
        }

        public async Task<Albanile> GetAlbanile(string id)
        {
            Guid idguid;
            if (!Guid.TryParse(id, out idguid))
                return null;

            Albanile albanil = await _context.Albaniles.FirstOrDefaultAsync(x => x.Id == idguid);
            if (albanil == null)
                return null;

            return albanil;
        }

        public async Task<List<Obra>> GetObras()
        {
            var obras = await _context.Obras.Include(x => x.AlbanilesXObras).Include(x => x.IdTipoObraNavigation).ToListAsync();

            return obras;
        }

        public async Task<Albanile> PostAlbanile(Albanile albanile)
        {
            albanile.Id = Guid.NewGuid();

            await _context.Albaniles.AddAsync(albanile);
            await _context.SaveChangesAsync();
            return albanile;
        }

        public async Task<Albanile> PutAlbanile(string id, Albanile albanile)
        {
            Guid idguid;
            if (!Guid.TryParse(id, out idguid))
                return null;

            Albanile albanilBase = await _context.Albaniles.FirstOrDefaultAsync(x => x.Id == idguid);
            if (albanilBase == null)
                return null;

            albanilBase.Nombre = albanile.Nombre;
            albanilBase.Apellido = albanile.Apellido;
            albanilBase.Dni = albanile.Dni;
            albanilBase.Telefono = albanile.Telefono;
            albanilBase.Calle = albanile.Calle;
            albanilBase.Numero = albanile.Numero;
            albanilBase.CodPost = albanile.CodPost;
            albanilBase.FechaAlta = albanile.FechaAlta;
            albanilBase.Activo = albanile.Activo;
            await _context.SaveChangesAsync();
            return albanilBase;
        }

        public async Task<AlbanilesXObra> PostAlbanileXObra(AlbanilesXObra albanileXObra)
        {
            albanileXObra.Id = Guid.NewGuid();

            await _context.AlbanilesXObras.AddAsync(albanileXObra);
            await _context.SaveChangesAsync();
            return albanileXObra;
        }

      
    }
}
