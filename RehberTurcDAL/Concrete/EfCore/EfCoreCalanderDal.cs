using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreCalanderDal : EfCoreGenericRepostoryDal<Calendar, DataContext>, ICalanderDal
	{
		private readonly DataContext _context;
		public EfCoreCalanderDal(DataContext context) : base(context)
		{
			_context = context;
		}
		public override List<Calendar> GetAll(Expression<Func<Calendar, bool>> filter = null)
		{
			var entities = _context.calendars.AsQueryable(); //.AsTracking():gönderilen istek takip edilmez.

			if (filter != null)
			{
				entities = entities.Where(filter);
			}
			return entities.ToList();
		}

	}
}
