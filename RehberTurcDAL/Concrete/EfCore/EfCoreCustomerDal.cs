using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
﻿using RehberTurcDAL.Data;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreCustomerDal:EfCoreGenericRepostoryDal<Customer,DataContext>,ICustomerDal
	{
		private readonly DataContext _context;
		public EfCoreCustomerDal(DataContext context) : base(context)
		{
			_context = context;
		}

	}
}
