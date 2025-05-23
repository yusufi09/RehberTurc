﻿using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;


namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailScrollMenuCommentComponentPartial : ViewComponent
	{
		private readonly IUserService _userService;

		public _CityDetailScrollMenuCommentComponentPartial(IUserService userService)
		{
			_userService = userService;
		}
		public IViewComponentResult Invoke()
		{
			return View(_userService.GetAll());
		}
	}
}