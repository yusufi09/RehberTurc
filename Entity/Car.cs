using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Car:BaseEntity
	{
		public string Model { get; set; }
		public string Brand { get; set; }		
		public List<CarImage> Images { get; set; }
		public decimal PricePerDay { get; set; }
		public List<CarComment> Comments { get; set; }
		public int CategoryId { get; set; }
		public Category Category { get; set; }
	}
}
