using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class OtelFavori
	{
		public int Id { get; set; }
		public string Favori { get; set; }
		public string OtelId { get; set; }
		public Otel Otel { get; set; }
	}
}
