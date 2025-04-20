using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreCategoryDal : EfCoreGenericRepostoryDal<Category, DataContext>, ICategoryDal
	{
		private readonly DataContext _context;
		public EfCoreCategoryDal(DataContext context) : base(context)
		{
			_context = context;
		}


	}
}
