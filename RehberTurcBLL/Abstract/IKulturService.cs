using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface IKulturService
	{
		List<Kultur> GetAll(Expression<Func<Kultur, bool>> filter = null);
		void Create(Kultur entity);
		void Update(Kultur entity);
		void Delete(Kultur entity);
		Kultur GetOne(Expression<Func<Kultur, bool>> filter = null);
		Kultur GetById(int id);
	}
}
