using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class OtelComment : Comment
	{
		public int OtelId { get; set; }		
		public virtual Otel Otel { get; set; }

		public int? CustomerId { get; set; } // Nullable yapıldı
		public virtual Customer Customer { get; set; }
	}
}
