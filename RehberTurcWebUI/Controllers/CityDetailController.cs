using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
namespace RehberTurcWebUI.Controllers
{
    public class CityDetailController : Controller
    {

        private readonly ICityPageService _cityPageService;
		private readonly ICustomerService _customerService;

		public CityDetailController(ICustomerService customerService, ICityPageService cityPageService)
        {
            _customerService = customerService;
			_cityPageService = cityPageService;
		}
        public IActionResult Index()
        {
            return View(_cityPageService.GetAll());

        }
    }
}
