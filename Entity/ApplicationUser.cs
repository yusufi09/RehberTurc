 using Microsoft.AspNetCore.Identity;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class ApplicationUser:IdentityUser
	{
		public string FirstName {  get; set; }
		public string LastName { get; set; }
		public string Address { get; set; }
		//public string Email { get; set; }
		//public string Phone { get; set; }
		public string City { get; set; }
		public string CreditCard { get; set; }//string?
		public string Surname { get; set; }
		public int CityId { get; set; }
		public City city { get; set; }
		public string Location { get; set; }
		public decimal Balance { get; set; }
		public List<AirbnbComment> AirbnbComments { get; set; }
		public List<CafeComment> CafeComments { get; set; }
		public List<CarComment> CarComments { get; set; }
		public List<KulturComment> KulturComments { get; set; }
		public List<EventComment> EventComments { get; set; }
		public List<OtelComment> OtelComments { get; set; }
		public List<CityComment> CityComments { get; set; }
		public List<OtelFavorite> OtelFavorites { get; set; }
		public List<CarFavorite> CarFavorites { get; set; }
		public List<KulturFavorite> KulturFavorites { get; set; }
		public List<CityFavorite> CityFavorites { get; set; }
		public List<CafeFavorite> CafeFavorites { get; set; }
		public List<AirbnbFavorite> AirbnbFavorites { get; set; }
	}
}
