using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class OtelImage
    {
		public int Id { get; set; }
		public string Url { get; set; }
		public int OtelId { get; set; }
		public Otel Otel { get; set; }

	}
}
