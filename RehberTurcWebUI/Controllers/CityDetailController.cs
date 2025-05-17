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
		

		public CityDetailController(IUserService userService, ICityPageService cityPageService)
		{
			_userService = userService;
			_cityPageService = cityPageService;
		}
		public IActionResult Index(int id)
		{

			return View(_cityPageService.GetOne(id));
		}
	}
}
