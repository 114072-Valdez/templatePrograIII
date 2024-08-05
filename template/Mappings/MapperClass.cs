using AutoMapper;
using template.DTOs;
using template.Models;
using template.Services;

namespace template.Mappings
{
    public class MapperClass : Profile
    {
        public MapperClass()
        {
            CreateMap<ObraDTO, Obra>().ReverseMap();

            CreateMap<TiposObraDto, TiposObra>().ReverseMap();
            
            CreateMap<AlbanileDTO,Albanile>().ReverseMap();
            CreateMap<AlbanileCreateDTO, Albanile>().ReverseMap();
            
            CreateMap<AlbanilesXObraDTO, AlbanilesXObra>().ReverseMap();
            CreateMap<albanilXObraCreateDTO, AlbanilesXObra>().ReverseMap();

        }
    }
}
