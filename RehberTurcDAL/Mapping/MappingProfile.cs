using AutoMapper;
using RehberTurcDAL.DTOs.CityDTO;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Mapping
{
	public class MappingProfile:Profile
	{
		public MappingProfile()
		{
			CreateMap<CityUpdateDto, City>().ReverseMap();
			CreateMap<CityCreateDTO, City>().ReverseMap();
		}
	}
}
