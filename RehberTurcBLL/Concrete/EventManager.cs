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
	public class EventManager : IEventService
	{
		private readonly IEventDal _eventDal;

		public EventManager(IEventDal eventDal)
		{
			_eventDal = eventDal;

		}
		public void Create(Event entity)
		{
			_eventDal.Create(entity);
		}

		public void Delete(Event entity)
		{
			_eventDal.Delete(entity);
		}

		public List<Event> GetAll(Expression<Func<Event, bool>> filter = null)
		{
			return _eventDal.GetAll(filter);
		}

		public Event GetById(int id)
		{
			return _eventDal.GetById(id);
		}

		public Event GetOne(Expression<Func<Event, bool>> filter = null)
		{
			return _eventDal.GetOne(filter);
		}

		public void Update(Event entity)
		{
			_eventDal.Update(entity);
		}
	}
}
