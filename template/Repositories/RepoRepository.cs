using template.DTOs;
using template.Models;
using template.Services;

namespace template.Repositories
{
    public interface RepoRepository
    {
        Task<List<Albanile>> GetAlbaniles(string idObra);
        Task<List<Albanile>> GetAllAlbaniles();
        Task<List<Obra>> GetObras();
        Task<Albanile> PostAlbanile(Albanile albanile);
        Task<AlbanilesXObra> PostAlbanileXObra(AlbanilesXObra albanileXObra);
    }
}
