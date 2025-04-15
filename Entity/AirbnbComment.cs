using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class AirbnbComment:Comment
	{
		public int AirbnbId { get; set; }
		public virtual Airbnb airbnb{ get; set; }

		public int CustomerId { get; set; }
		public virtual Customer Customer { get; set; }

	}
}
