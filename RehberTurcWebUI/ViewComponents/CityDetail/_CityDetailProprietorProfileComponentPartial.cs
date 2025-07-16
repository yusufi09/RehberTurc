using Microsoft.AspNetCore.Mvc;
using RehberTurcBLL.Abstract;
using RehberTurcEntity;
using RehberTurcEntity.Class;

namespace RehberTurcWebUI.ViewComponents.CityDetail
{
	public class _CityDetailProprietorProfileComponentPartial : ViewComponent
	{
		
		private readonly IEventService _eventService;
		public _CityDetailProprietorProfileComponentPartial(IEventService eventService)
		{
			
			_eventService = eventService;
		}

		public IViewComponentResult Invoke(int cityId)
		{
			// Sadece ilgili şehrin etkinliklerini getir
			var events = _eventService.GetAll(x => x.CityId == cityId);
			return View(events);
		}
	}
}
