﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
	public class Mail : BaseEntity
	{
		public string From { get; set; }
		public List<string> To { get; set; }
		public string Subject { get; set; }
		public string Message { get; set; }
		public bool IsHtml { get; set; }

		public Mail()
		{
			To = new List<string>();
		}
	}
}
