using RehberTurcBLL.Concrete;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface ICalanderService
	{
		List<Calendar> GetAll(Expression<Func<Calendar, bool>> filter = null);
		void Create(Calendar entity);
		void Update(Calendar entity);
		void Delete(Calendar entity);
		Calendar GetOne(Expression<Func<Calendar, bool>> filter = null);
		Calendar GetById(int id);
	}
}
