using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class CafeImage
    {
		public int Id { get; set; }
		public string Url { get; set; }
		public int CafeId { get; set; }
		public Cafe Cafe { get; set; }

	}
}
