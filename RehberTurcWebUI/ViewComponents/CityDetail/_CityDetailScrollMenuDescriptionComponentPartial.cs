using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;


namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailScrollMenuDescriptionComponentPartial : ViewComponent
	{
		private readonly ICityPageService _citypageService;

		public _CityDetailScrollMenuDescriptionComponentPartial(ICityPageService citypageService)
		{
			_citypageService = citypageService;
		}
		public IViewComponentResult Invoke(int id)
		{
			return View(_citypageService.GetOne(id));

		}
	}
}