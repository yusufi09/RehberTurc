using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class KulturFavorite:BaseEntityFavorite
	{
		public int KulturId { get; set; }
		public virtual Kultur Kultur { get; set; }

		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
