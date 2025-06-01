using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;

namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailProprietorProfileComponentPartial : ViewComponent
	{
		private readonly ICalanderService _calanderService;
		public _CityDetailProprietorProfileComponentPartial(ICalanderService calanderService)
		{
			_calanderService = calanderService;

		}
		public IViewComponentResult Invoke()
		{
			return View(_calanderService.GetAll());
		}
	}
}
