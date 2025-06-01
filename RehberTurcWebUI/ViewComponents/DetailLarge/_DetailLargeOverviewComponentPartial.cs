using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.ViewComponents.DetailLarge
{
	public class _DetailLargeOverviewComponentPartial : ViewComponent
	{
		private readonly IOtelService _otelService;
		public _DetailLargeOverviewComponentPartial(IOtelService otelService)
		{
			_otelService = otelService;
			
		}
		public IViewComponentResult Invoke(int id)
		{
			return View(_otelService.GetOne(id));
		}
	}
}