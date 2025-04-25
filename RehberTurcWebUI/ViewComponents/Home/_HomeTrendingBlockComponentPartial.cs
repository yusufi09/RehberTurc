using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeTrendingBlockComponentPartial : ViewComponent
	{
		private readonly ICityPageService _citypageService;
		private readonly ICountryService _countryservice;

		public _HomeTrendingBlockComponentPartial(ICityPageService citypageService, ICountryService countryservice)
		{
			_citypageService = citypageService;
			_countryservice = countryservice;
		}
		public IViewComponentResult Invoke()
		{
			return View(_countryservice.GetAll());
		}
	}
}