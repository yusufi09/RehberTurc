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
	public interface IUserService
	{
		List<ApplicationUser> GetAll(Expression<Func<ApplicationUser, bool>> filter = null);
		void Create(ApplicationUser entity);
		void Update(ApplicationUser entity);
		void Delete(ApplicationUser entity);
		ApplicationUser GetOne(Expression<Func<ApplicationUser, bool>> filter =null);
		ApplicationUser GetById(int id);
	}
}
