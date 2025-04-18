﻿using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcEntity
{
    public class BaseEntity
    {
		public int Id { get; set; }
		public string Name { get; set; }
		public string Location { get; set; }
		public int CityId { get; set; }
		public City City { get; set; }
	}
}
