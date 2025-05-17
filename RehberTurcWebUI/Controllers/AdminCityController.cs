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

		// Ortak hata gösterimi
	

		// Yardımcı metodlar (Controller sınıfı içinde)
		//private string GenerateImageHtml(ICollection<CityImage> images)
		//{
		//	if (images == null || !images.Any())
		//		return "<p>Henüz resim eklenmemiş</p>";

		//	var sb = new StringBuilder();
		//	sb.Append("<div class='row gallery'>");
		//	foreach (var img in images)
		//	{
		//		sb.Append($"<div class='col-md-3 mb-3'><img src='{img.Url}' class='img-thumbnail' alt='{img.Url}'></div>");
		//	}
		//	sb.Append("</div>");
		//	return sb.ToString();
		//}


		//		/****************************************************
		//				 * YENİ ŞEHİR SAYFASI OLUŞTURMA KISMI BAŞLANGIÇ
		//				 ****************************************************/
		//		// Template yolunu belirle
		//		string templatePath = Path.Combine(_env.WebRootPath, "Templates/CityTemplates/city_template.html");

		//		// Template'i oku ve yer tutucuları değiştir
		//		string htmlContent = System.IO.File.ReadAllText(templatePath)
		//			.Replace("{{CityName}}", newCity.Tittle)
		//			.Replace("{{CityDescription}}", newCity.Description ?? "")
		//			.Replace("{{CreatedDate}}", newCity.CreatedDate.ToString("dd.MM.yyyy"))
		//			.Replace("{{CityImages}}", GenerateImageHtml(newCity.Images));

		//		// Sayfa yolunu hazırla ve klasörü oluştur
		//		string cityPagesFolder = Path.Combine(_env.WebRootPath, "CityPages");
		//				if (!Directory.Exists(cityPagesFolder))
		//				{
		//					Directory.CreateDirectory(cityPagesFolder);
		//				}

		//				// Sayfayı kaydet
		//				string pagePath = Path.Combine(cityPagesFolder, $"{SanitizeFileName(newCity.Tittle)}.html");
		//				System.IO.File.WriteAllText(pagePath, htmlContent);

		//				//// Sayfa URL'sini veritabanına kaydet (opsiyonel)
		//				//newCity.ToString = $"/CityPages/{SanitizeFileName(newCity.Images)}.html";
		//				_citypageService.Update(newCity);
		//				/****************************************************
		//				 * YENİ ŞEHİR SAYFASI OLUŞTURMA KISMI BİTİŞ
		//				 ****************************************************/

		//				TempData["SuccessMessage"] = $"{newCity.Tittle} şehri ve sayfası başarıyla oluşturuldu!";
		//				return RedirectToAction("Index");
		//}
		//			catch (Exception ex)
		//			{
		//				ModelState.AddModelError("", $"Şehir eklenirken hata oluştu: {ex.Message}");
		//ViewBag.Categories = _categoryService.GetAll();
		//return View(createCityDTO);
		//			}
		//		private string SanitizeFileName(string name)
		//		{
		//			if (string.IsNullOrWhiteSpace(name))
		//				return "sehir_" + Guid.NewGuid().ToString()[..8];

		//			var invalidChars = Path.GetInvalidFileNameChars();
		//			var cleanName = new string(name
		//				.Replace("İ", "I")
		//				.Replace("ı", "i")
		//				.Replace("Ğ", "G")
		//				.Replace("ğ", "g")
		//				.Replace("Ş", "S")
		//				.Replace("ş", "s")
		//				.Replace("Ü", "U")
		//				.Replace("ü", "u")
		//				.Replace("Ö", "O")
		//				.Replace("ö", "o")
		//				.Replace("Ç", "C")
		//				.Replace("ç", "c")
		//				.Where(ch => !invalidChars.Contains(ch))
		//				.ToArray())
		//				.Replace(" ", "_")
		//				.ToLower();

		//			return cleanName.Length > 50 ? cleanName[..50] : cleanName;
		//		}

		//public ActionResult Edit(int? id)
		//{
		//	if (id == null)
		//	{
		//		TempData["message"] = "Bir Ürün Seçiniz";
		//		return RedirectToAction("Index");
		//	}
		//	var products = _citypageService.GetOne(id.Value);

		//	if (products == null)
		//	{
		//		TempData["message"] = "Seçilen Ürün Bulunamadı";
		//		return RedirectToAction("Index");
		//	}

		//	ViewBag.Categories = _categoryService.GetAll();
		//	return View(_mapper.Map<CityUpdateDto>(products));
		//}

		//[HttpPost]
		//public async Task<ActionResult> Edit(CityUpdateDto updatecity, IFormFile[] files, int[] CityImageId)
		//{
		//	if (ModelState.IsValid)
		//	{
		//		if (files != null)
		//		{
		//			foreach (IFormFile item in files)
		//			{
		//				updatecity.Images.Add(new CityImage() { Url = await ImageOperations.UploadImageAsync(item) });
		//			}
		//		}
		//		//updateProduct.CreatedDate = DateTime.Now;
		//		//_productService.Create(updateProduct);
		//		return RedirectToAction("Index");
		//	}
		//	ViewBag.Categories = _categoryService.GetAll();
		//	return View(updatecity);
		//}
	}
}
