using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
    public class CityImage
    {

		public int Id { get; set; }
		public string Url { get; set; }
		public int CityId { get; set; }
		public City city { get; set; }
	}
}
