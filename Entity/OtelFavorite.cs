using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class OtelFavorite:BaseEntityFavorite
	{
		public string OtelId { get; set; }
		public Otel Otel { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
