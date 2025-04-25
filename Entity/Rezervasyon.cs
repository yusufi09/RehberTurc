using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Rezervasyon
    {
		public int Id { get; set; }
		public int UserId { get; set; }
		public ApplicationUser User { get; set; }
		public int OtelId { get; set; }
		public Otel Otel { get; set; }
		public DateTime StartDate { get; set; }
		public DateTime FinishDate { get; set; }
		public int RoomId { get; set; }
		public Room Room { get; set; }
		public int GuestCount { get; set; }
		public decimal Total { get; set; }
	}
}
