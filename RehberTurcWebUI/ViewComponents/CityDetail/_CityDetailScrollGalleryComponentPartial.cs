using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailScrollGalleryComponentPartial : ViewComponent
	{

		private readonly ICityPageService _citypageService;

		public _CityDetailScrollGalleryComponentPartial(ICityPageService citypageService)
		{
			_citypageService = citypageService;
		}

		public IViewComponentResult Invoke()
		{
			return View(_citypageService.GetAll());

		}
	}
}
