﻿using RehberTurcBLL.Abstract;
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
	public class CountryManager : ICountryService
	{
		private readonly ICountryDal _countryDal;

		public CountryManager(ICountryDal countryDal)
		{
			_countryDal = countryDal;

		}
		public void Create(Country entity)
		{
			_countryDal.Create(entity);
		}

		public void Delete(Country entity)
		{
			_countryDal.Delete(entity);
		}

		public List<Country> GetAll(Expression<Func<Country, bool>> filter = null)
		{
			return _countryDal.GetAll(filter);
		}

		public Country GetById(int id)
		{
			return _countryDal.GetById(id);
		}

		public Country GetOne(Expression<Func<Country, bool>> filter = null)
		{
			return _countryDal.GetOne(filter);
		}

		public void Update(Country entity)
		{
			 _countryDal.Update(entity);
		}
	}
}
