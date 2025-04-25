using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class CityFavorite:BaseEntityFavorite
	{
		public string CityId { get; set; }
		public City City { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
