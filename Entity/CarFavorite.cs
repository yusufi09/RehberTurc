using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class CarFavorite:BaseEntityFavorite
	{
		public string CarId { get; set; }
		public Car Car { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
