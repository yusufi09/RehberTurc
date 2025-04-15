using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;


namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailScrollMenuCommentComponentPartial : ViewComponent
	{
		private readonly ICustomerService _customerService;

		public _CityDetailScrollMenuCommentComponentPartial(ICustomerService customerService)
		{
			_customerService = customerService;
		}
		public IViewComponentResult Invoke()
		{
			return View(_customerService.GetAll());
		}
	}
}