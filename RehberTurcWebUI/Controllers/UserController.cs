using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using RehberTurcWebUI.Models;

namespace RehberTurcWebUI.Controllers
{
	public class UserController : Controller
	{
		private readonly UserManager<IdentityUser> _userManager;
		private readonly SignInManager<IdentityUser> _signInManager;

		public UserController(UserManager<IdentityUser> userManager,
							  SignInManager<IdentityUser> signInManager)
		{
			_userManager = userManager;
			_signInManager = signInManager;
		}

		public IActionResult SignIn() => View();

		[HttpPost]
		public async Task<IActionResult> SignIn(RegisterViewModel model)
		{
			var user = new IdentityUser { UserName = model.Email, Email = model.Email };
			var result = await _userManager.CreateAsync(user, model.Password);

			if (result.Succeeded)
			{
				await _signInManager.SignInAsync(user, isPersistent: false);
				return RedirectToAction("Index", "Home");
			}

			foreach (var error in result.Errors)
				ModelState.AddModelError("", error.Description);

			return View(model);
		}

		// Login, Logout vs. de eklenebilir
	}

}
