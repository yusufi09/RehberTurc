using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity.Class
{
    public class KulturImage
    {
		public int Id { get; set; }
		public string Url { get; set; }
		public int KulturId { get; set; }
		public Kultur Kultur { get; set; }

	}
}
