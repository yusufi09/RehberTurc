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
		public override List<Category> GetAll(Expression<Func<Category, bool>> filter = null)
		{
			var entities = _context.Categories.Include(i => i.Otels).Include(i => i.Cafes).Include(i=> i.Kulturs).Include(i=>i.Airbnbs).Include(i=>i.Cars).AsQueryable(); //.AsTracking():gönderilen istek takip edilmez.

			if (filter != null)
			{
				entities = entities.Where(filter);
			}
			return entities.ToList();
		}

	}
}
