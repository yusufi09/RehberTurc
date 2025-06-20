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
	public class ListingManager : IListingService
	{
		private readonly IListingDal _listingDal;

		public ListingManager(IListingDal listingDal)
		{
			_listingDal = listingDal;

		}
		public void Create(Listing entity)
		{
			_listingDal.Create(entity);
		}

		public void Delete(Listing entity)
		{
			_listingDal.Delete(entity);
		}

		public List<Listing> GetAll(Expression<Func<Listing, bool>> filter = null)
		{
			return _listingDal.GetAll(filter);
		}

		public Listing GetById(int id)
		{
			return _listingDal.GetById(id);
		}

		public Listing GetOne(Expression<Func<Listing, bool>> filter = null)
		{
			return _listingDal.GetOne(filter);
		}

		public void Update(Listing entity)
		{
			_listingDal.Update(entity);
		}
	}
}
