using Microsoft.EntityFrameworkCore;
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
	public class EfCoreListingDal : EfCoreGenericRepostoryDal<Listing, DataContext>, IListingDal
	{
		private readonly DataContext _context;
		public EfCoreListingDal(DataContext context) : base(context)
		{
			_context = context;
		}
		
		public Listing GetOne(int id)
		{
			return _context.listings.Include(i=>i.Images).Include(i => i.category).Include(i => i.category).Include(i => i.city).Include(i => i.country).FirstOrDefault(i => i.Id == id);
		}
		public override List<Listing> GetAll(Expression<Func<Listing, bool>> filter = null)
		{
			var entities = _context.listings.Include(i => i.Images).Include(i => i.category).Include(i => i.category).Include(i => i.city).Include(i => i.country).AsQueryable(); //.AsTracking():gönderilen istek takip edilmez.

			if (filter != null)
			{
				entities = entities.Where(filter);
			}
			return entities.ToList();
		}
	}
}