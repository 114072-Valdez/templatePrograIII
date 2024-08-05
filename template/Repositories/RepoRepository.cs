using template.DTOs;
using template.Models;
using template.Services;

namespace template.Repositories
{
    public interface RepoRepository
    {
        Task<List<Albanile>> GetAlbaniles(string idObra);
        Task<List<Albanile>> GetAllAlbaniles();
        Task<Albanile> GetAlbanile(string id);
        Task<List<Obra>> GetObras();
        Task<Albanile> PostAlbanile(Albanile albanile);
        Task<Albanile> PutAlbanile( string id, Albanile albanile);
        Task<AlbanilesXObra> PostAlbanileXObra(AlbanilesXObra albanileXObra);
    }
}
