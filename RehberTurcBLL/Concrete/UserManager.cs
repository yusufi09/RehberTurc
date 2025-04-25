using RehberTurcBLL.Abstract;
using RehberTurcDAL.Abstract;
using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Concrete
{
	public class UserManager : IUserService
	{
		private readonly IUserDal _userDal;
		public UserManager(IUserDal userDal)
		{
			_userDal = userDal;

		}
		public void Create(ApplicationUser entity)
		{
			_userDal.Create(entity);
		}

		public void Delete(ApplicationUser entity)
		{
			_userDal.Delete(entity);
		}

		public List<ApplicationUser> GetAll(Expression<Func<ApplicationUser, bool>> filter = null)
		{
			return _userDal.GetAll(filter);
		}

		public ApplicationUser GetById(int id)
		{
			return _userDal.GetById(id);
		}

		public ApplicationUser GetOne(Expression<Func<ApplicationUser, bool>> filter = null)
		{
			return _userDal.GetOne(filter);
		}

		public void Update(ApplicationUser entity)
		{
			_userDal.Update(entity);
		}
	}
}
