using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
using RehberTurcEntity;
using RehberTurcWebUI.Models;
using RehberTurcWebUI.Services;

namespace RehberTurcWebUI.Controllers
{
	public class UserController : Controller
	{
		private readonly UserManager<ApplicationUser> _userManager;
		private readonly SignInManager<ApplicationUser> _signInManager;
		private readonly ICityPageService _cityPageService;
		public UserController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager, ICityPageService cityPageService)
		{
			_userManager = userManager;
			_signInManager = signInManager;
			_cityPageService = cityPageService;
		}


		public IActionResult SignIn(string returnUrl = null)
		{
			return View(new LoginViewModel() { ReturnUrl = returnUrl == null ? "/Home/Index" : returnUrl });

		}

		[HttpPost]
		public async Task<IActionResult> SignIn(LoginViewModel model)
		{
			if (ModelState.IsValid)
			{
				var user = await _userManager.FindByEmailAsync(model.Email);

				await _signInManager.PasswordSignInAsync(user, model.Password, true, true);

				return Redirect(model.ReturnUrl);
			}
			return View(model);
		}

		public IActionResult Register()
		{
			ViewBag.cities = _cityPageService.GetAll();
			return View(new RegisterViewModel());
		}


		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> Register(RegisterViewModel model)
		{
			ModelState.Remove("City");
			if (!ModelState.IsValid)
			{
				return View(model);
			}
			try
			{
				ApplicationUser user = new ApplicationUser()
				{
					FirstName = model.FirstName,
					LastName = model.LastName,
					Email = model.Email,
					Address = model.Adress,
					UserName = model.FirstName.ToLower().Replace(" ", "") + model.LastName.ToLower(),
					CityId = model.CityId
				};

				var result = await _userManager.CreateAsync(user, model.Password);

				if (result.Succeeded)
				{
					var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
				var url = Url.Action("EmailConfirm", "User", new
				{
					token = code,
					userId = user.Id
				});
				var activateUrl = "https://localhost:7266" + url;

				var body = $"Sayın <strong>{user.FirstName + user.LastName};<br><br>Üyeliğinizi onaylamak için lütfen linke <a href={activateUrl}>tıklayınız</a>";

				MailHelper.SendMail(body, user.Email, "Üyelik Onayı");

				TempData["success"] = "Email adresinize gönderilen aktivasyon linkine tıklayınız";
				return RedirectToAction("SignIn");
			    }
				result.Errors.ToList().ForEach(i => ModelState.AddModelError(i.Code, i.Description));
				return View(model);
			}



			catch (Exception e)
			{
				ModelState.AddModelError("", e.Message);
				return View(model);
			}

		}
		public async Task<IActionResult> ConfirmEmail(string token, string userId)
		{
			if (token == null || userId == null)
			{
				TempData["success"] = "Üyeliğiniz onaylanmadı. Lütfen sistem yöneticisi ile iletişime geçiniz.";
				return RedirectToAction("SignIn");
			}

			var user = await _userManager.FindByIdAsync(userId);
			if (user != null)
			{
				var result = await _userManager.ConfirmEmailAsync(user, token);

				if (result.Succeeded)
				{
					TempData["success"] = "Üyeliğiniz onaylandı. Lütfen giriş yapınız.";
					return RedirectToAction("SignIn");
				}

			}
			TempData["success"] = "Üyeliğiniz onaylanmadı. Kullanıcı bulunamadı";
			return RedirectToAction("SignIn");
		}


	}
}

