using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeHowItWorkBlockComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}