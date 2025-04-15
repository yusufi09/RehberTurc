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
	public class CustomerManager : ICustomerService
	{
		private readonly ICustomerDal _customerDal;

		public CustomerManager(ICustomerDal customerDal)
		{
			_customerDal = customerDal;

		}

		public void Create(Customer entity)
		{
			_customerDal.Create(entity);
		}

		public void Delete(Customer entity)
		{

			_customerDal.Delete(entity);
		}

		public List<Customer> GetAll(Expression<Func<Customer, bool>> filter = null)
		{
			return _customerDal.GetAll(filter);
		}

		public void Update(Customer entity)
		{
			_customerDal.Update(entity);
		}
		public Customer GetOne(Expression<Func<Customer, bool>> filter = null)
		{
			return _customerDal.GetOne(filter);
		}
		public Customer GetById(int id)
		{
			return _customerDal.GetById(id);
		}
	}
}
