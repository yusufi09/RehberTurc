using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Abstract
{
	public interface ICityPageDal:IRepostoryDal<City>
	{
		City GetOne(int id);
	}
}
