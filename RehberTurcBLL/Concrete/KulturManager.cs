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
	public class KulturManager:IKulturService
	{
		private readonly IKulturDal _kulturDal;

		public KulturManager(IKulturDal kulturDal)
		{
			_kulturDal = kulturDal;

		}

		public void Create(Kultur entity)
		{
			_kulturDal.Create(entity);
		}

		public void Delete(Kultur entity)
		{

			_kulturDal.Delete(entity);
		}

		public List<Kultur> GetAll(Expression<Func<Kultur, bool>> filter = null)
		{
			return _kulturDal.GetAll(filter);
		}

		public void Update(Kultur entity)
		{
			_kulturDal.Update(entity);
		}
		public Kultur GetOne(Expression<Func<Kultur, bool>> filter = null)
		{
			return _kulturDal.GetOne(filter);
		}
		public Kultur GetById(int id)
		{
			return _kulturDal.GetById(id);
		}
	}
}


