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
		where TContext : DbContext, new()
	{
		private readonly TContext _context;

		

		public void Create(T entitiy)
		{
			using (var context = new TContext())
			{
				context.Set<T>().Add(entitiy);
				context.SaveChanges();
			}

		}

		public void Delete(T entitiy)
		{
			using (var context = new TContext())
			{
				context.Set<T>().Remove(entitiy);
				context.SaveChanges();
			}
		}

		public virtual List<T> GetAll(Expression<Func<T, bool>> filter)
		{
			using (var context = new TContext())
			{
				return filter == null
				? context.Set<T>().ToList()
				: context.Set<T>().Where(filter).ToList();
			}
		}

		public T GetById(int id)
		{
			using (var context = new TContext())
			{
				return context.Set<T>().Find(id);
			}

		}

		public T GetOne(Expression<Func<T, bool>> filter)
		{
			using (var context = new TContext())
			{
				return context.Set<T>().Where(filter).FirstOrDefault();
			}
		}

		public void Update(T entitiy)
		{
			using (var context = new TContext())
			{
				context.Entry(entitiy).State = EntityState.Modified;
				context.SaveChanges();
			}
		}
	}
}
