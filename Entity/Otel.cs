using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Otel:BaseEntity
    {		
		public List<OtelImage> Images { get; set; }
		public string Description { get; set; }
		public string Kunye { get; set; }
		public List<Room> Rooms { get; set; }
		public List<OtelComment> Comments { get; set; }
		public int CategoryId { get; set; }
		public Category Category { get; set; }

		public DateTime CreatedDate { get; set; }
		public List<OtelFavorite> OtelFavorites { get; set; }
	}
}
