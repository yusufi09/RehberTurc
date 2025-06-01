using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeTrendingPlacesComponentPartial : ViewComponent
	{
		private readonly IOtelService _otelService;
		public _HomeTrendingPlacesComponentPartial(IOtelService otelService)
		{
			_otelService = otelService;
			
		}
		public IViewComponentResult Invoke()
		{
			return View(_otelService.GetAll());
		}
	}
}