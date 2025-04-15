using Microsoft.AspNetCore.Mvc;

namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeStatisticBlockComponentPartial : ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}