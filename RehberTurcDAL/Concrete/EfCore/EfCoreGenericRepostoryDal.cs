using Microsoft.EntityFrameworkCore;
using RehberTurcDAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreGenericRepostoryDal<T, TContext> : IRepostoryDal<T>
		where T : class
		where TContext : DbContext
	{
		private readonly TContext context;
		public EfCoreGenericRepostoryDal(TContext _context)
		{
			context = _context;
		}

		public void Create(T entitiy)
		{
			context.Set<T>().Add(entitiy);
			context.SaveChanges();
		}

		public void Delete(T entitiy)
		{
			context.Set<T>().Remove(entitiy);
			context.SaveChanges();
		}

		public virtual List<T> GetAll(Expression<Func<T, bool>> filter)
		{

			return filter == null
			? context.Set<T>().ToList()
			: context.Set<T>().Where(filter).ToList();

		}

		public T GetById(int id)
		{


			return context.Set<T>().Find(id);


		}

		public T GetOne(Expression<Func<T, bool>> filter)
		{

			return context.Set<T>().Where(filter).FirstOrDefault();

		}
		

		public void Update(T entitiy)
		{


			context.Entry(entitiy).State = EntityState.Modified;
			context.SaveChanges();

		}

		
	}
}
