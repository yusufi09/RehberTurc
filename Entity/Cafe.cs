using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Cafe:BaseEntity
	{
		
		public List<CafeImage> Images { get; set; }
		public string Description { get; set; }
		public List<CafeComment> Comments { get; set; }
		public int CategoryId { get; set; }
		public Category Category { get; set; }

	}
}
