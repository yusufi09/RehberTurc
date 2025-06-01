using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class EventImage
	{
		public int Id { get; set; }
		public string Url { get; set; }
		public int EventsId { get; set; }
		public Event Events { get; set; }
	}
}
