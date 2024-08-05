using Microsoft.AspNetCore.Mvc;
using template.DTOs;
using template.Models;
using template.Response;

namespace template.Services
{
    public interface OperacionesService
    {
        Task<ApiResponse<List<AlbanileDTO>>> GetAllAlbaniles();
        Task<ApiResponse<List<ObraDTO>>> GetObras();
        Task<ApiResponse<List<AlbanileDTO>>> GetAlbaniles(string idObra);
        Task<ApiResponse<AlbanileDTO>> PostAlbanile(AlbanileCreateDTO albanileCreate);
        Task<ApiResponse<AlbanilesXObraDTO>> PostAlbanileXObra(albanilXObraCreateDTO albanilXObraCreate);
    }

 
}
