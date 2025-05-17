using RehberTurcEntity.Class;
using System.ComponentModel.DataAnnotations;

namespace RehberTurcWebUI.Models
{
	public class RegisterViewModel
	{
		[Display(Name = "Ad")]
		public string FirstName { get; set; }

		[Display(Name = "Soyad")]
		public string LastName { get; set; }

		[EmailAddress]
		[Required(ErrorMessage = "Email zorunludur.")]
		public string Email { get; set; }

		[DataType(DataType.Password)]
		[MinLength(6)]
		[Display(Name = "Şifre")]
		public string Password { get; set; }

		[Compare("Password")]
		[DataType(DataType.Password)]
		[Display(Name = "Şifre Onaylama")]
		public string ConfirmPassword { get; set; }
		public string City { get; set; }
		public int CityId { get; set; }
		public City city { get; set; }
		public string Adress { get; set; }
	}
}
