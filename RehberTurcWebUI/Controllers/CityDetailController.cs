using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
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
        public IActionResult Index()
        {
            return View(_cityPageService.GetAll());

        }
    }
}
