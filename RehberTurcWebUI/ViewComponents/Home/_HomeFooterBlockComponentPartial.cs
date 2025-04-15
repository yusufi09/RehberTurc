using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeFooterBlockComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}