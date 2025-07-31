using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RehberTurcBLL.Abstract;
using RehberTurcDAL.DTOs.CityDTO;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using RehberTurcWebUI.Models;
using RehberTurcWebUI.Services;
using System.CodeDom;
using System.Text;

namespace RehberTurcWebUI.Controllers
{
	public class AdminCityController : Controller
	{
		private readonly ICityPageService _citypageService;
		private readonly ICountryService _countryService;
		private readonly IMapper _mapper;
		public AdminCityController(ICityPageService cityService, IMapper mapper, ICountryService countryService)
		{
			_citypageService = cityService;
			_mapper = mapper;
			_countryService = countryService;
		}
		public IActionResult Index()
		{
			var cities = _citypageService.GetAll();
			return View(cities);
		}
		public ActionResult Create()
		{
			ViewBag.Country = _countryService.GetAll();
			return View();
		}

		[HttpPost]
		public async Task<ActionResult> Create(CityCreateDTO cityCreateDTO, IFormFile[] files)
		{
			ModelState.Remove("comments"); 
			if (ModelState.IsValid)
			{
				City p = _mapper.Map<City>(cityCreateDTO);
				if (files != null)
				{
					foreach (IFormFile item in files)
					{
						p.Images.Add(new CityImage { Url = await ImageOperations.UploadImageAsync(item) });
					}
				}
				p.CreatedDate = DateTime.Now;
				_citypageService.Create(p);
				return RedirectToAction("Index");
			}
			ViewBag.Country = _countryService.GetAll();
			return View(cityCreateDTO);
		}

		public IActionResult Delete(int id)
		{

			
			var city = _citypageService.GetById(id);
			_citypageService.Delete(city);

			return RedirectToAction("Index");
		}

		

		public ActionResult Edit(int? id)
		{
			if (id == null)
			{
				TempData["message"] = "Bir Ürün Seçiniz";
				return RedirectToAction("Index");
			}
			var products = _citypageService.GetOne(id.Value);

			if (products == null)
			{
				TempData["message"] = "Seçilen Ürün Bulunamadı";
				return RedirectToAction("Index");
			}

			ViewBag.Country = _countryService.GetAll();
			return View(_mapper.Map<CityUpdateDto>(products));
		}

		[HttpPost]
		public async Task<ActionResult> Edit(CityUpdateDto updatecity, IFormFile[] files, int[] CityImageId)
		{
			if (ModelState.IsValid)
			{
				City p = _mapper.Map<City>(updatecity);
				if (files != null)
				{
					
					foreach (IFormFile item in files)
					{
						p.Images.Add(new CityImage() { Url = await ImageOperations.UploadImageAsync(item) });
					}
				}
				p.CreatedDate = DateTime.Now;
				_citypageService.Update(p);
				return RedirectToAction("Index");
			}
			ViewBag.Country = _countryService.GetAll();
			return View(updatecity);
		}
	}
}
