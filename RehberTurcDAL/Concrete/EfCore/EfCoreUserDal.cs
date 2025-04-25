using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreUserDal : EfCoreGenericRepostoryDal<ApplicationUser, DataContext>, IUserDal
	{
		private readonly DataContext _context;
		public EfCoreUserDal(DataContext context) : base(context)
		{
			_context = context;
		}
	}
}