using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface ICityPageService
	{
		List<City> GetAll(Expression<Func<City, bool>> filter = null);
		void Create(City entity);
		void Update(City entity);
		void Delete(City entity);
		City GetOne(int id);
		City GetById(int id);

		City Find(int id);
	}
}
