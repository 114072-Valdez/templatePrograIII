using Microsoft.EntityFrameworkCore;
using template.Models;

namespace template.Repositories.Impl
{
    public class RepoRepositoryImpl : RepoRepository
    {
        private readonly Progra3PracticaContext _context;

        public RepoRepositoryImpl(Progra3PracticaContext context)
        {
            _context = context;
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

        public async Task<AlbanilesXObra> PostAlbanileXObra(AlbanilesXObra albanileXObra)
        {
            albanileXObra.Id = Guid.NewGuid();

            await _context.AlbanilesXObras.AddAsync(albanileXObra);
            await _context.SaveChangesAsync();
            return albanileXObra;
        }
    }
}
