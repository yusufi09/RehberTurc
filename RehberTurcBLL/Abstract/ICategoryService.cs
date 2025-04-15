using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface ICategoryService
	{
		List<Category> GetAll(Expression<Func<Category, bool>> filter = null);
		void Create(Category entity);
		void Update(Category entity);
		void Delete(Category entity);
		Category GetOne(Expression<Func<Category, bool>> filter = null);
		Category GetById(int id);
	}
}
