using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.ViewComponents.DetailLarge
{
	public class _DetailLargeGalleryBoxComponentPartial : ViewComponent
	{
		private readonly IOtelService _otelService;
	  
		public _DetailLargeGalleryBoxComponentPartial(IOtelService otelService)
		{
			_otelService = otelService;
			
		}
		public IViewComponentResult Invoke()
		{
			return View(_otelService.GetAll());
		}
	}
}