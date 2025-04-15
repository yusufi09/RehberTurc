using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class AirbnbImage
    {
		public int Id { get; set; }
		public string Url { get; set; }
		public int AirbnbId { get; set; }
		public Airbnb Airbnb  { get; set; }

	}
}
