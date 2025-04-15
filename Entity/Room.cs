using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Room
    {
		public int Id { get; set; }
		public string Number { get; set; }
		public int Capacity { get; set; }
		public decimal Price { get; set; }
		public int RoomTypeId { get; set; }
		public RoomType RoomType { get; set; }

	}
}
