using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using RehberTurcEntity;
using RehberTurcWebUI.Models;
using RehberTurcWebUI.Services;

namespace RehberTurcWebUI.Controllers
{
	public class UserController : Controller
	{
		private readonly UserManager<ApplicationUser> _userManager;
		private readonly SignInManager<ApplicationUser> _signInManager;

		public UserController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager)
		{
			_userManager = userManager;
			_signInManager = signInManager;
		}


		public IActionResult SignIn(string returnUrl = null)
		{

			return View(new LoginViewModel() { ReturnUrl = returnUrl == null ? "/" : returnUrl });
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
			return View(new RegisterViewModel());
		}
		

		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> Register(RegisterViewModel model)
		{
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
					UserName = model.FirstName.ToLower().Replace(" ", "") + model.LastName.ToLower()
				};

				var result = await _userManager.CreateAsync(user, model.Password);

				if (result.Succeeded)
				{
					var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
					var url = Url.Action("ConfirmEmail", "User", new
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

			//}



		}
	}
}
