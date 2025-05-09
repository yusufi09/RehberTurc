using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.Controllers
{
	public class AdminController : Controller
	{
		public IActionResult Index()
		{
			return View();
		}
	}
}
