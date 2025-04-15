using RehberTurcBLL.Abstract;
using RehberTurcDAL.Abstract;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Concrete
{
	public class CafeManager:ICafeService
	{
		private readonly ICafeDal _cafeDal;

		public CafeManager(ICafeDal cafeDal)
		{
			_cafeDal = cafeDal;	
		}

		public void Create(Cafe entity)
		{
			_cafeDal.Create(entity);
		}

		public void Delete(Cafe entity)
		{
			_cafeDal.Delete(entity);
		}

		public List<Cafe> GetAll(Expression<Func<Cafe, bool>> filter = null)
		{
			return _cafeDal.GetAll(filter);
		}

		public Cafe GetById(int id)
		{
			return _cafeDal.GetById(id);
		}

		public Cafe GetOne(Expression<Func<Cafe, bool>> filter = null)
		{
			return _cafeDal.GetOne(filter);
		}

		public void Update(Cafe entity)
		{
			_cafeDal.Update(entity);
		}
	}
}
