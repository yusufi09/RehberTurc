using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Abstract
{
	public interface IOtelDal:IRepostoryDal<Otel>
	{
		Otel GetOne(int id);
	}
}
