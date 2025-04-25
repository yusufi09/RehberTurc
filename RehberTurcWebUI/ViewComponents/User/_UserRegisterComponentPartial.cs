using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.ViewComponents.User
{
	public class _UserRegisterComponentPartial : ViewComponent
	{
		private readonly IUserService _userService;

		public _UserRegisterComponentPartial(IUserService userService)
		{
			_userService = userService;
		}
		public IViewComponentResult Invoke()
		{
			return View(_userService.GetAll());
		}
	}
}