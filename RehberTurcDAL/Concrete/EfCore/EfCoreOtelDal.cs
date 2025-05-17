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
		private readonly DataContext _context;
		public EfCoreOtelDal(DataContext context) : base(context)
		{
			_context = context;
		}
		public Otel GetOne(int id)
		{
			return _context.Otels.Include(i => i.Images).Include(i => i.Comments).FirstOrDefault(i => i.Id == id);
		}
		public override List<Otel> GetAll(Expression<Func<Otel, bool>> filter = null)
		{
			var entities = _context.Otels.Include(i => i.Images).Include(i => i.Comments).AsQueryable(); //.AsTracking():gönderilen istek takip edilmez.

			if (filter != null)
			{
				entities = entities.Where(filter);
			}
			return entities.ToList();
		}
	}
}
