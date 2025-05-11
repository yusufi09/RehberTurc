using System.ComponentModel.DataAnnotations;

namespace RehberTurcWebUI.Models
{
	public class LoginViewModel
	{
		[DataType(DataType.EmailAddress)]
		public string Email { get; set; }

		public string UserName { get; set; }

		[DataType(DataType.Password)]
		public string Password { get; set; }
		public string ReturnUrl { get; set; }
	}
}
