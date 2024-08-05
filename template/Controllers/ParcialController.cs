using Microsoft.AspNetCore.Mvc;
using template.DTOs;
using template.Models;
using template.Response;
using template.Services;

namespace template.Controllers
{
    [ApiController]
    public class ParcialController : Controller
    {
        private readonly OperacionesService _operacionesService;

        public ParcialController(OperacionesService operaciones)
        {
            _operacionesService = operaciones;
        }

        [HttpGet("/getAllAlbaniles")]
        public Task<ApiResponse<List<AlbanileDTO>>> GetAllAlbaniles()
        {
            return _operacionesService.GetAllAlbaniles();
        }

        [HttpGet("/getAlbanil/{id}")]
        public Task<ApiResponse<AlbanileDTO>> GetAlbanil(string id)
        {
            return _operacionesService.GetAlbanil(id);
        }

        [HttpGet("/getObras")]
        public Task<ApiResponse<List<ObraDTO>>> GetObras()
        {
            return _operacionesService.GetObras();
        }

        [HttpGet("/getAlbaniles")]
        public Task<ApiResponse<List<AlbanileDTO>>> GetAlbaniles(string idObra)
        {
            return _operacionesService.GetAlbaniles(idObra);
        }

        [HttpPost("/postAlbanile")]
        public Task<ApiResponse<AlbanileDTO>> PostAlbaniles([FromBody] AlbanileCreateDTO albanileCreate)
        {
            return _operacionesService.PostAlbanile(albanileCreate);
        }

        [HttpPut("/putAlbanile/{id}")]
        public Task<ApiResponse<AlbanileDTO>> PutAlbaniles(string id, [FromBody] AlbanileCreateDTO albanileCreate)
        {
            return _operacionesService.PutAlbanile(id, albanileCreate);
        }

        [HttpPost("/postAlbanileXObra")]
        public Task<ApiResponse<AlbanilesXObraDTO>> PostAlbanilesXObra([FromBody] albanilXObraCreateDTO albanilXObraCreate)
        {
            return _operacionesService.PostAlbanileXObra(albanilXObraCreate);
        }

    }
}