using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface IListingService
	{
		List<Listing> GetAll(Expression<Func<Listing, bool>> filter = null);
		void Create(Listing entity);
		void Update(Listing entity);
		void Delete(Listing entity);
		Listing GetOne(Expression<Func<Listing, bool>> filter = null);
		Listing GetById(int id);
	}
}
