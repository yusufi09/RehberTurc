using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.Controllers
{
	public class ServiceController : Controller
	{
		private readonly ICategoryService _categoryService;
		private readonly IOtelService _otelService;

		public ServiceController(ICategoryService categoryService, IOtelService otelService)
		{
			_categoryService = categoryService;
			_otelService = otelService;

		}
		public IActionResult OtelList()
		{
			return View(_otelService.GetAll());
		}
	}
}
