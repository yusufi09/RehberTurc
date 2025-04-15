using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Abstract
{
	public interface IRepostoryDal<T> where T : class
	{
		void Create(T entitiy);
		void Update(T entitiy);
		void Delete(T entitiy);
		List<T> GetAll(Expression<Func<T, bool>> filter);
		T GetOne(Expression<Func<T, bool>> filter);
		T GetById(int id);
	}
}
