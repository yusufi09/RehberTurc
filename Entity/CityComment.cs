using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
    public class CityComment:Comment
    {
		public int CityId { get; set; }
		public virtual City city { get; set; }
		public int? CustomerId { get; set; } // Nullable yapıldı
		public virtual Customer Customer { get; set; }
	}
}
