using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface ICafeService
	{
		List<Cafe> GetAll(Expression<Func<Cafe, bool>> filter = null);
		void Create(Cafe entity);
		void Update(Cafe entity);
		void Delete(Cafe entity);
		Cafe GetOne(Expression<Func<Cafe, bool>> filter = null);
		Cafe GetById(int id);
	}
}
