using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Airbnb:BaseEntity
	{
		public List<AirbnbComment> airbnbComments { get; set; }
		public List<Room> Rooms { get; set; }
		public List<AirbnbImage> airbnbImages  { get; set; }
		public int CategoryId { get; set; }
		public Category Category { get; set; }
	}
}
