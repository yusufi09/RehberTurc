using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class BaseEntityFavorite
	{
		public int Id { get; set; }
		public DateTime AddedDate { get; set; } = DateTime.UtcNow;
		public string Notes { get; set; } // Kullanıcı notları
		public bool IsActive { get; set; } = true;

		public decimal? UserRating { get; set; }

		// Kullanıcı ilişkisi
		public string UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
