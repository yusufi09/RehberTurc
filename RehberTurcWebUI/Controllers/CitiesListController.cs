using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RehberTurcBLL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity.Class;

namespace RehberTurcWebUI.Controllers
{
	public class CitiesListController : Controller
	{
		private readonly ICityPageService _cityPageService;
		public CitiesListController(ICityPageService cityPageService)
		{
			_cityPageService = cityPageService;
		}
		public IActionResult Index()
		{
			return View(_cityPageService.GetAll());

		}
	}
}
