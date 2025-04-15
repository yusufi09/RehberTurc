using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeTestimonialBlockComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}