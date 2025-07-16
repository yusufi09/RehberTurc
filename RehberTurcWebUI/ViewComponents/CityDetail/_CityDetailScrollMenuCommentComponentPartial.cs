using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
using RehberTurcEntity;
using RehberTurcEntity.Class;


namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailScrollMenuCommentComponentPartial : ViewComponent
	{
		private readonly ICityPageService _citypageService;
		private readonly IUserService _userService;

		public _CityDetailScrollMenuCommentComponentPartial(IUserService userService, ICityPageService citypageService)
		{
			_userService = userService;
			_citypageService = citypageService;
		}
		public IViewComponentResult Invoke(int userId)
		{
			var user = _userService.GetAll().FirstOrDefault(x => x.Id == userId.ToString());
			if (user == null)
				return View(new List<ApplicationUser>());
			return View(new List<ApplicationUser> { user });
		}
	}
}