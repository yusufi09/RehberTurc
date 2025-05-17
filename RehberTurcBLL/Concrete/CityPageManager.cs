using Microsoft.EntityFrameworkCore;
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
	public class CityPageManager : ICityPageService
	{
		private readonly ICityPageDal _cityDal;

		public CityPageManager(ICityPageDal cityDal)
		{
			_cityDal = cityDal;

		}

		public void Create(City entity)
		{
			_cityDal.Create(entity);
		}

		public void Delete(City entity)
		{

			_cityDal.Delete(entity);
		}

		public List<City> GetAll(Expression<Func<City, bool>> filter = null)
		{
			return _cityDal.GetAll(filter);
		}

		public void Update(City entity)
		{
			_cityDal.Update(entity);
		}
		public City GetOne(int id)
		{
			return _cityDal.GetOne(id);
		}
		public City GetById(int id)
		{
			return _cityDal.GetById(id);
		}
		public City Find(int id)
		{
			return _cityDal.GetById(id);
		}

		
	}
}
