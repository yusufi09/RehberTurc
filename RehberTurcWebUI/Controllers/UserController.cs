using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.Controllers
{
	public class UserController : Controller
	{
		public IActionResult SignIn()
		{
			return View();
		}
	}
}
