using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class ListingImage
	{
		public int Id { get; set; }
		public string Url { get; set; }
		public int ListingId { get; set; }
		public Listing listings { get; set; }
	}
}
