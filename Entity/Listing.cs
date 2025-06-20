using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace RehberTurcEntity
{
	public class Listing
	{
		public int Id { get; set; }
		public string Name { get; set; }
		// tcaarka ön yüz ayrı giriş adli sicil kaydı vesikalık
		//public string VergiNumarası { get; set; }
		public string Description { get; set; }

		public string Slogan { get; set; }
		public string LinkUrl { get; set; }
		public string Phone { get; set; }
		public string Email { get; set; }
		public DateTime CreatedDate { get; set; }
		public int CountryId { get; set; }
		public Country country { get; set; }
		public int CityId { get; set; }
		public City city { get; set; }
		public int CategoryId { get; set; }
		public Category? category { get; set; }
		public string Address { get; set; }
		public List<ListingImage> Images { get; set; }

	}
}
