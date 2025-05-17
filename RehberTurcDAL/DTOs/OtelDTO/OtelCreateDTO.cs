using RehberTurcEntity;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.DTOs.OtelDTO
{
	public class OtelCreateDTO
	{
		[Required(ErrorMessage = "Şehir adı zorunludur")]
		[StringLength(100, ErrorMessage = "Şehir adı maksimum 100 karakter olabilir")]
		public string Name { get; set; }

		[Required]
		[StringLength(2000)]
		public string Description { get; set; }

		[Required]
		[Display(Name = "Şehir")]
		public int CityId { get; set; }

		public int CategoryId { get; set; }
		public bool IsFavorite { get; set; }
		public List<OtelComment> comments { get; set; }

		public List<OtelImage> Images { get; set; }

		public OtelCreateDTO()
		{
			Images = new List<OtelImage>();
		}
	}
}
