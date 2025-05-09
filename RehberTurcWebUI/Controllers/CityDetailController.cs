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
		private readonly DbContext _context;

		public CityDetailController(IUserService userService, ICityPageService cityPageService, DbContext context)
		{
			_userService = userService;
			_cityPageService = cityPageService;
			_context = context;
		}
		public IActionResult Index(string cityName)
		{
			// Şehir adına göre veritabanından sorgulama
			var city = _context.Set<City>()
							 .Include(c => c.Images) // Resimleri dahil et
							 .FirstOrDefault(c => c.Tittle.ToLower() == cityName.ToLower());

			if (city == null)
			{
				return NotFound(); // 404 sayfası
			}

			return View(city); // Views/CityDetail/Index.cshtml'e veriyi gönder
		}
	}
}
