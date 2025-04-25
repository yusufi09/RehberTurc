using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
using RehberTurcWebUI.Models;

namespace RehberTurcWebUI.Controllers;

public class HomeController : Controller
{

	private readonly ICityPageService _cityPageService;
	private readonly IUserService _userService;
	private readonly ICategoryService _categoryservice;
	private readonly ICountryService _countryService;

	public HomeController(IUserService userService, ICityPageService cityPageService, ICountryService countryService, ICategoryService categoryservice)
	{
		_userService = userService;
		_cityPageService = cityPageService;
		_countryService = countryService;
		_categoryservice = categoryservice;
	}
	public IActionResult Index()
	{
		return View(_countryService.GetAll());


	}
  
}
