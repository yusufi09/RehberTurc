using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreCountryDal:EfCoreGenericRepostoryDal<Country, DataContext>,ICountryDal
	{
		private readonly DataContext _context;
		public EfCoreCountryDal(DataContext context) : base(context)
		{
			_context = context;
		}
	}
}
