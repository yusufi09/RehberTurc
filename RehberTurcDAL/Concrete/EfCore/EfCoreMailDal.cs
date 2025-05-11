using RehberTurcDAL.Abstract;
using RehberTurcDAL.Data;
using RehberTurcEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Concrete.EfCore
{
	public class EfCoreMailDal: IMailDal
    {
        private readonly DataContext _context;

		public EfCoreMailDal(DataContext context)
		{
			_context = context;
		}

		public int Sendmail(string mail)
		{
			Mail m = new Mail();
			m.Subject = "Abonelik";
			m.IsHtml = true;
			m.From = "test.altanemre1989@gmail.com";
			m.To.Add(mail);
			m.Message = "Aylık Abonelik";
			_context.Mails.Add(m);
			return _context.SaveChanges();
		}
	}
}
