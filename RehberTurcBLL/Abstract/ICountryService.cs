using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface ICountryService
	{
		List<Country> GetAll(Expression<Func<Country, bool>> filter = null);
		void Create(Country entity);
		void Update(Country entity);
		void Delete(Country entity);
		Country GetOne(Expression<Func<Country, bool>> filter = null);
		Country GetById(int id);
	}
}
