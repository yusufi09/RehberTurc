using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RehberTurcBLL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcDAL.DTOs.AddListing;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using RehberTurcWebUI.Services;
using System.Drawing;

namespace RehberTurcWebUI.Controllers
{
	public class AddListingController : Controller
	{
		private readonly ICityPageService _cityPageService;
		private readonly ICountryService _countryService;
		private readonly ICategoryService _categoryService;
		private readonly IListingService _listingService;
		private readonly DataContext _context;
		private readonly IMapper _mapper;
		public AddListingController(ICityPageService cityPageService, DataContext dataContext, ICountryService countryService, IMapper mapper, ICategoryService categoryService, IListingService listingService)
		{
			_cityPageService = cityPageService;
			_context = dataContext;
			_countryService = countryService;
			_mapper = mapper;
			_categoryService = categoryService;
			_listingService = listingService;
		}
		public IActionResult Index()
		{
			var cities = _context.Cities.ToList(); // Veritabanından şehirleri çek
			var countries = _context.Countries.ToList(); // Veritabanından şehirleri çek
			ViewBag.Cities = cities;
			ViewBag.Countries = countries;
			ViewBag.Categories = _categoryService.GetAll() ?? new List<Category>();

			return View();
		}
		[HttpPost]
		public async Task<ActionResult> Index(ListingCreateDTO listingCreateDTO, IFormFile[] files)
		{
			if (ModelState.IsValid)
			{
				Listing p = _mapper.Map<Listing>(listingCreateDTO);
				if (files != null)
				{
					foreach (IFormFile item in files)
					{
						p.Images.Add(new ListingImage() { Url= await ImageOperations.UploadImageAsync(item) });
					}
				}
				p.CreatedDate = DateTime.Now;
				_listingService.Create(p);
				return RedirectToAction("Index");
			}
			ViewBag.Categories = _categoryService.GetAll();
			ViewBag.Country = _countryService.GetAll();
			ViewBag.Cities = _cityPageService.GetAll();
			return View(listingCreateDTO);
		}
	}
}
