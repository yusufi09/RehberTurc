using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Category
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Image { get; set; }
		public List<Otel> Otels { get; set; }
		public List<Kultur> Kulturs { get; set; }
		public List<Airbnb> Airbnbs { get; set; }
		public List<Cafe> Cafes { get; set; }
		public List<Car> Cars { get; set; }
	}
}

