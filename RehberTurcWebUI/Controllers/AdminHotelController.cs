
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
using RehberTurcDAL.DTOs.CityDTO;
using RehberTurcEntity.Class;
using RehberTurcEntity;
using RehberTurcWebUI.Services;
using RehberTurcDAL.DTOs.OtelDTO;

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
		public ActionResult Create()
		{
			ViewBag.Category = _categoryService.GetAll();
			return View();
		}

		[HttpPost]
		public async Task<ActionResult> Create(OtelCreateDTO otelCreateDTO, IFormFile[] files)
		{
			ModelState.Remove("comments");
			if (ModelState.IsValid)
			{
				Otel p = _mapper.Map<Otel>(otelCreateDTO);
				if (files != null)
				{
					foreach (IFormFile item in files)
					{
						p.Images.Add(new OtelImage { Url = await ImageOperations.UploadImageAsync(item) });
					}
				}
				p.CreatedDate = DateTime.Now;
				_otelService.Create(p);
				return RedirectToAction("Index");
			}
			ViewBag.Category = _categoryService.GetAll();
			return View(otelCreateDTO);
		}
		public IActionResult Confirm()
		{
			return View();
		}
	}
}
