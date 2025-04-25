using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
	public class CarComment : Comment
	{
		public int CarId { get; set; }
		public virtual Car  car { get; set; }
		public string? UserId { get; set; }
		public ApplicationUser User { get; set; }
	}
}
