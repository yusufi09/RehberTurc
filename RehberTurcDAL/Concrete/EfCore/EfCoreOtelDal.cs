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
	public class EfCoreOtelDal : EfCoreGenericRepostoryDal<Otel, DataContext>, IOtelDal
	{
		public override List<Otel> GetAll(Expression<Func<Otel, bool>> filter)
		{
			using (var context = new DataContext())
			{
				var cities = context.Otels.Include(i => i.Id).AsQueryable();

				return filter == null
					? cities.ToList()
					: cities.Where(filter).ToList();
			}
		}
	}
}
