using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class City
    {
       
        public int Id { get; set; }

		public string Tittle { get; set; }
        public string Description { get; set; }
        public int CountryId { get; set; }
		public List<CityImage> Images { get; set; }
		public Country Country { get; set; }
		public List<CityComment> cityComments { get; set; }

	}
}
