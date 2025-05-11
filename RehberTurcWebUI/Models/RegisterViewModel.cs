using System.ComponentModel.DataAnnotations;

namespace RehberTurcWebUI.Models
{
	public class RegisterViewModel
	{
		[Required]
		[StringLength(100, ErrorMessage = "Kullanıcı adı {0} en az {2} ve en fazla {1} karakter olmalıdır.", MinimumLength = 6)]
		[Display(Name = "Ad")]
		public string FirstName { get; set; }
		[Required]
		[StringLength(100, ErrorMessage = "Kullanıcı adı {0} en az {2} ve en fazla {1} karakter olmalıdır.", MinimumLength = 6)]
		[Display(Name = "SoyAd")]
		public string LastName { get; set; }

		[Required]
		[EmailAddress]
		[Display(Name = "E-posta")]
		public string Email { get; set; }

		[Required]
		[StringLength(100, ErrorMessage = "Şifre {0} en az {2} ve en fazla {1} karakter olmalıdır.", MinimumLength = 6)]
		[DataType(DataType.Password)]
		[Display(Name = "Şifre")]
		public string Password { get; set; }

		[Required]
		[DataType(DataType.Password)]
		[Compare("Password", ErrorMessage = "Şifreler eşleşmiyor.")]
		[Display(Name = "Şifreyi Onayla")]
		public string ConfirmPassword { get; set; }
	}
}
