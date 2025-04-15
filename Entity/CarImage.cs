using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class CarImage
    {
		public int Id { get; set; }
		public string Url { get; set; }
		public int CarId { get; set; }
		public Car  car { get; set; }

	}
}
