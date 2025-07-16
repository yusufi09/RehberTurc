using Microsoft.EntityFrameworkCore;
using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreEventDal : EfCoreGenericRepostoryDal<Event, DataContext>, IEventDal
	{
		private readonly DataContext _context;
		public EfCoreEventDal(DataContext context) : base(context)
		{
			_context = context;
		}
		public override List<Event> GetAll(Expression<Func<Event, bool>> filter = null)
		{
			var entities = _context.Events.Include(i => i.Images).AsQueryable(); //.AsTracking():gönderilen istek takip edilmez.<
			if (filter != null)
                return _context.Events.Where(filter).ToList();
            return _context.Events.ToList();
		}
	}
}
