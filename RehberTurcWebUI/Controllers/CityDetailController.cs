using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RehberTurcBLL.Abstract;
using RehberTurcEntity.Class;
namespace RehberTurcWebUI.Controllers
{
	public class CityDetailController : Controller
	{

		private readonly ICityPageService _cityPageService;
		private readonly IUserService _userService;
		private readonly ICalanderService _calanderService;

		public CityDetailController(IUserService userService, ICityPageService cityPageService, ICalanderService calanderService)
		{
			_userService = userService;
			_cityPageService = cityPageService;
			_calanderService = calanderService;
		}
		public IActionResult Index(int id)
		{

			return View(_cityPageService.GetOne(id));
		}
	}
}
