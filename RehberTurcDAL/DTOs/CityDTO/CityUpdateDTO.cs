 using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace RehberTurcDAL.DTOs.CityDTO
{
	public class CityUpdateDto
	{
		public int Id { get; set; }

		[Required]
		[StringLength(100)]
		public string Tittle { get; set; }

		[Required]
		public string Description { get; set; }

		[Required]
		public int CountryId { get; set; }
		public bool IsFavorite { get; set; }
		public List<CityComment> comments { get; set; }
		public List<CityImage> Images { get; set; }

		public DateTime CreatedDate { get; set; }
		public CityUpdateDto()
		{
			Images = new List<CityImage>();
		}
	}
}
