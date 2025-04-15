using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeTrendingPlacesComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}