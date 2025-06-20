using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Abstract
{
	public interface IEventService
	{
		List<Event> GetAll(Expression<Func<Event, bool>> filter = null);
		void Create(Event entity);
		void Update(Event entity);
		void Delete(Event entity);
		Event GetOne(Expression<Func<Event, bool>> filter = null);
		Event GetById(int id);
	}	
}
