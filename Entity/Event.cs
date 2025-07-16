using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class Event : BaseEntity
	{
		public List<EventImage> Images { get; set; }
		public string Description { get; set; }
		public DateTime EventDate {get; set; }
		public List<EventComment> EventComments { get; set; }
		public int CategoryId { get; set; }
		public Category Category { get; set; }
		public int CityId { get; set; }
		public City City { get; set; }
		

	}
}
