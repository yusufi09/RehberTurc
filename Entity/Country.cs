using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
	public class Country
    {
		public int  Id { get; set; }
		public string Name { get; set; }
		public string EmergencyNumber { get; set; }
		public string Image { get; set; }
		public string Byrk { get; set; }
		public List<City> Cities{ get; set; }
		public List<Listing>Listings { get; set; }

	}
}
