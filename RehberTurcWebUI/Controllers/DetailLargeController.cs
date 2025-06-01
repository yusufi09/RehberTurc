using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.Controllers
{
    public class DetailLargeController : Controller
    {
        private readonly IOtelService _otelService;
		public DetailLargeController(IOtelService otelService)
		{
            _otelService = otelService;
			
		}
		public IActionResult Index(int id)
        {
            return View(_otelService.GetOne(id));
        }
    }
}
