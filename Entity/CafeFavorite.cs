using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class CafeFavorite:BaseEntityFavorite
	{
		public string CafeId { get; set; }
		public Cafe Cafe { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
