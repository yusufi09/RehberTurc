using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RehberTurcDAL.Data;
using RehberTurcEntity;

namespace RehberTurcWebUI.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class EventsController : ControllerBase
	{
		private readonly DataContext _context;

		public EventsController(DataContext context)
		{
			_context = context;
		}

		[HttpGet("GetEventsByDate")]
		public async Task<ActionResult<IEnumerable<Event>>> GetEventsByDate(string date)
		{
			if (string.IsNullOrEmpty(date))
				return BadRequest("Geçerli bir tarih belirtilmelidir.");

			if (!DateTime.TryParse(date, out DateTime parsedDate))
				return BadRequest("Geçersiz tarih formatı.");

			var events = await _context.Events
				.Include(e => e.Images)
				.Where(e => e.EventDate == parsedDate.Date)
				.ToListAsync();

			// Transform to a simplified format for the client
			var result = events.Select(e => new
			{
				id = e.Id,
				title = e.Name,
				time = e.EventDate.ToString("HH:mm"),
				venue = e.Location,
				images = e.Images.Select(img => new { url = img.Url }).ToList()
			}).ToList();

			return Ok(result);
		}
	}
}


