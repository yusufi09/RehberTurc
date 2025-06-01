using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class EventComment
	{
		public int Id { get; set; }
		public int EventsId { get; set; }
		public virtual Event Events { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
