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
	public class OtelManager : IOtelService
	{
		private readonly IOtelDal _otelDal;

		public OtelManager(IOtelDal otelDal)
		{
			_otelDal = otelDal;

		}

		public void Create(Otel entity)
		{
			_otelDal.Create(entity);
		}

		public void Delete(Otel entity)
		{

			_otelDal.Delete(entity);
		}

		public List<Otel> GetAll(Expression<Func<Otel, bool>> filter = null)
		{
			return _otelDal.GetAll(filter);
		}

		public void Update(Otel entity)
		{
			_otelDal.Update(entity);
		}
		public Otel GetOne(int id)
		{
			return _otelDal.GetOne(id);
		}
		public Otel GetById(int id)
		{
			return _otelDal.GetById(id);
		}
	}
}
