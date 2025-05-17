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
	public class EfCoreCityPageDal : EfCoreGenericRepostoryDal<City, DataContext>, ICityPageDal
	{
		private readonly DataContext _context;
		public EfCoreCityPageDal(DataContext context) : base(context)
		{
			_context = context;
		}
		public  City GetOne(int id)
		{
			return _context.Cities.Include(i => i.Images).Include(i => i.cityComments).FirstOrDefault(i => i.Id ==id);
		}
		public override List<City> GetAll(Expression<Func<City, bool>> filter = null)
		{
			var entities = _context.Cities.Include(i => i.Images).Include(i => i.cityComments).AsQueryable(); //.AsTracking():gönderilen istek takip edilmez.

			if (filter != null)
			{
				entities = entities.Where(filter);
			}
			return entities.ToList();
		}

		public City Find(int id)
		{
			return _context.Cities.Include(i => i.Images).FirstOrDefault(i => i.Id == id);
		}
	}
}