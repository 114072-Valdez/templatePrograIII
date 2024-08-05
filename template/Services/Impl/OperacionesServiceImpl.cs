using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using template.DTOs;
using template.Models;
using template.Repositories;
using template.Response;

namespace template.Services.Impl
{
    public class OperacionesServiceImpl : OperacionesService
    {
        private readonly RepoRepository _repository;
        private readonly IMapper _mapper;

        public OperacionesServiceImpl(RepoRepository repoRepository, IMapper mapper)
        {
            _repository = repoRepository;
            _mapper = mapper;
        }

        public async Task<ApiResponse<List<AlbanileDTO>>> GetAlbaniles(string idObra)
        {
            var response = new ApiResponse<List<AlbanileDTO>>();

            try
            {
                var repoResponse = await _repository.GetAlbaniles(idObra);

                var albanilesDTO = _mapper.Map<List<AlbanileDTO>>(repoResponse);
                

                response.Data = albanilesDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }

            return response;
        }

        public async Task<ApiResponse<List<AlbanileDTO>>> GetAllAlbaniles()
        {
            var response = new ApiResponse<List<AlbanileDTO>>();

            try
            {
                var repoResponse = await _repository.GetAllAlbaniles();
                var albanilesDTO = _mapper.Map<List<AlbanileDTO>>(repoResponse);
                response.Data = albanilesDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }
         
            return response;
        }


        public async Task<ApiResponse<AlbanileDTO>> GetAlbanil(string id)
        {
            var response = new ApiResponse<AlbanileDTO>();

            try
            {
                var repoResponse = await _repository.GetAlbanile(id);
                var albanilesDTO = _mapper.Map<AlbanileDTO>(repoResponse);
                response.Data = albanilesDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }

            return response;
        }

        public async Task<ApiResponse<List<ObraDTO>>> GetObras()
        {
            var response = new ApiResponse<List<ObraDTO>>();

            try
            {
                var repoResponse = await _repository.GetObras();
                var obrasDTO = _mapper.Map<List<ObraDTO>>(repoResponse);

                foreach (var obraDTO in obrasDTO)
                {
                    var obra = repoResponse.FirstOrDefault(x => x.Id == obraDTO.Id);
                    obraDTO.CantidadAlbaniles = obra.AlbanilesXObras.Count;
                }

                response.Data = obrasDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }

            return response;
        }

        public async Task<ApiResponse<AlbanileDTO>> PostAlbanile(AlbanileCreateDTO albanileCreate)
        {
            var response = new ApiResponse<AlbanileDTO>();

            try
            {
                var albanile = _mapper.Map<Albanile>(albanileCreate);
                var repoResponse = await _repository.PostAlbanile(albanile);
                var albanilesDTO = _mapper.Map<AlbanileDTO>(repoResponse);
                response.Data = albanilesDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }

            return response;
        }


        public async Task<ApiResponse<AlbanileDTO>> PutAlbanile(string id, AlbanileCreateDTO albanileCreate)
        {
            var response = new ApiResponse<AlbanileDTO>();

            try
            {
                var albanile = _mapper.Map<Albanile>(albanileCreate);
                var repoResponse = await _repository.PutAlbanile(id, albanile);
                var albanilesDTO = _mapper.Map<AlbanileDTO>(repoResponse);
                response.Data = albanilesDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }

            return response;
        }

        public async Task<ApiResponse<AlbanilesXObraDTO>> PostAlbanileXObra(albanilXObraCreateDTO albanilXObraCreate)
        {
            var response = new ApiResponse<AlbanilesXObraDTO>();

            try
            {
                var albanileXObra = _mapper.Map<AlbanilesXObra>(albanilXObraCreate);
                var repoResponse = await _repository.PostAlbanileXObra(albanileXObra);
                var albanilesXObraDTO = _mapper.Map<AlbanilesXObraDTO>(repoResponse);
                response.Data = albanilesXObraDTO;
            }
            catch (Exception ex)
            {
                response.setError(ex.ToString(), HttpStatusCode.BadRequest);
            }

            return response;
        }
    }
}
