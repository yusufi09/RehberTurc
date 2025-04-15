using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class Kultur:BaseEntity
    {
		public string Text { get; set; }
		public string Description { get; set; }
		public List<KulturComment> Comments { get; set; }
		public List<KulturImage> kulturImages { get; set; }
		public int CategoryId { get; set; }
		public Category Category { get; set; }
	}
}
