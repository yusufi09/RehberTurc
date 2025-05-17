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
	public class CityCreateDTO
	{
		
			[Required(ErrorMessage = "Şehir adı zorunludur")]
			[StringLength(100, ErrorMessage = "Şehir adı maksimum 100 karakter olabilir")]
			public string Tittle { get; set; }

			[Required]
			[StringLength(2000)]
			public string Description { get; set; }

			[Required]
			[Display(Name = "Ülke")]
			public int CountryId { get; set; }
		public DateTime CreatedDate { get; set; }

		public bool IsFavorite { get; set; }
		public List<CityComment> comments { get; set; }

		public List<CityImage> Images { get; set; }

		public CityCreateDTO()
		{
			Images = new List<CityImage>();
		}

	}
}
