using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;


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
		public IViewComponentResult Invoke()
		{
			return View(_citypageService.GetAll());
		}
	}
}