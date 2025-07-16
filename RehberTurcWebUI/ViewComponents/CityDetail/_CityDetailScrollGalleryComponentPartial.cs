using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using System.Drawing;
namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailScrollGalleryComponentPartial : ViewComponent
	{

		private readonly ICityPageService _citypageService;

		public _CityDetailScrollGalleryComponentPartial(ICityPageService citypageService)
		{
			_citypageService = citypageService;
		}

		public IViewComponentResult Invoke(int cityId)
		{
			var city = _citypageService.GetAll().FirstOrDefault(x => x.Id == cityId);
			if (city == null)
				return View(new List<City>());
			return View(new List<City> { city });
		}
	}
}
