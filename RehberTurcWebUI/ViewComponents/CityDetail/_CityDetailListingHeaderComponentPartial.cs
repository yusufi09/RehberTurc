using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailListingHeaderComponentPartial : ViewComponent
	{
		private readonly ICityPageService _cityService;

		public _CityDetailListingHeaderComponentPartial(ICityPageService cityService)
		{
			_cityService = cityService;
		}
		public IViewComponentResult Invoke(int id)
		{
			return View(_cityService.Find(id));
		}
	}
}
