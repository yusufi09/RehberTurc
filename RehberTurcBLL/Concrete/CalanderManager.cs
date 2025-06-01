using RehberTurcBLL.Abstract;
using RehberTurcDAL.Abstract;
using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Concrete
{
	public class CalanderManager : ICalanderService
	{
		private readonly ICalanderDal _calanderDal;

		public CalanderManager(ICalanderDal calanderDal)
		{
			_calanderDal = calanderDal;

		}
		public void Create(Calendar entity)
		{
			  _calanderDal.Create(entity); 
		}

		public void Delete(Calendar entity)
		{
			_calanderDal.Delete(entity);
		}

		public List<Calendar> GetAll(Expression<Func<Calendar, bool>> filter = null)
		{
			return _calanderDal.GetAll(filter);
		}

		public Calendar GetById(int id)
		{

			return _calanderDal.GetById(id);
		}

		public Calendar GetOne(Expression<Func<Calendar, bool>> filter = null)
		{
			return _calanderDal.GetOne(filter);
		}

		public void Update(Calendar entity)
		{
			_calanderDal.Update(entity);
		}
	}
}
