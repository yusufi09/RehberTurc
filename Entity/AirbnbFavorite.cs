using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class AirbnbFavorite:BaseEntityFavorite
	{
		public string AirbnbId { get; set; }
		public Airbnb Airbnb { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
