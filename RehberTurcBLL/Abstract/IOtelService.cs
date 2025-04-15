using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface IOtelService
	{
		List<Otel> GetAll(Expression<Func<Otel, bool>> filter = null);
		void Create(Otel entity);
		void Update(Otel entity);
		void Delete(Otel entity);
		Otel GetOne(Expression<Func<Otel, bool>> filter = null);
		Otel GetById(int id);
	}
}
