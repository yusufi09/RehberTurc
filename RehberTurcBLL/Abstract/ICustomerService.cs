using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface ICustomerService
	{
		List<Customer> GetAll(Expression<Func<Customer, bool>> filter = null);
		void Create(Customer entity);
		void Update(Customer entity);
		void Delete(Customer entity);
		Customer GetOne(Expression<Func<Customer, bool>> filter = null);
		Customer GetById(int id);
	}
}
