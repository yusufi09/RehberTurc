using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;


namespace RehberTurcWebUI.ViewComponents.Home
{
	public class _HomeServiceBlockComponentPartial : ViewComponent
	{
		private readonly ICityPageService _citypageService;
		private readonly ICountryService _countryservice;
		private readonly ICategoryService _categoryservice;

		public _HomeServiceBlockComponentPartial(ICityPageService citypageService, ICountryService countryservice, ICategoryService categoryservice)
		{
			_citypageService = citypageService;
			_countryservice = countryservice;
			_categoryservice = categoryservice;
		}
		public IViewComponentResult Invoke()
		{
			return View(_categoryservice.GetAll());
		
		}
	}
}