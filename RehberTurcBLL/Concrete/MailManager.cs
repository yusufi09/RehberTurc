using RehberTurcBLL.Abstract;
using RehberTurcDAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcBLL.Concrete
{
	public class MailManager:IMailService
	{
		private readonly IMailDal _mailDal;

		public MailManager(IMailDal mailDal)
		{
			_mailDal = mailDal;
		}

		public int Sendmail(string mail)
		{
			return _mailDal.Sendmail(mail);
		}
	}
}
