
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.Controllers
{
	
	public class AdminHotelController : Controller
	{
		private readonly ICityPageService _citypageService;
		private readonly IOtelService _otelService;
		private readonly ICategoryService _categoryService;
		private readonly IMapper _mapper;
		public AdminHotelController(ICityPageService cityService, IMapper mapper,ICategoryService categoryService,IOtelService otelService)
		{
			_citypageService = cityService;
			_mapper = mapper;
			_categoryService = categoryService;
			_otelService = otelService;
		}
		public IActionResult Index()
		{
			var otels = _otelService.GetAll();
			return View(otels);
		}
	}
}
