using System.Net.Mail;
using System.Net;

namespace RehberTurcWebUI.Services
{
	public class MailHelper
	{
		public static bool SendMail(string body, string to, string subject, bool isHtml = true)
		{
			return SendMail(body, new List<string> { to }, subject, isHtml);
		}

		public static bool SendMail(string body, List<string> to, string subject, bool isHtml = true)
		{
			bool result = false;

			try
			{
				var message = new MailMessage();

				message.Subject = subject;

				to.ForEach(x => //altanemre@gmail.com,yusuf@gmail.com
				{
					message.To.Add(new MailAddress(x));
				});
				message.From = new MailAddress("yusf7acr7@gmail.com");
				message.Body = body;
				message.IsBodyHtml = isHtml;

				using (var smtp = new SmtpClient())
				{
					smtp.Host = "smtp.gmail.com";
					smtp.EnableSsl = true;
					smtp.Port = 587;
					smtp.Credentials = new NetworkCredential("yusf7acr7@gmail.com", "hpid edmc ukka havk");

					smtp.Send(message);

					result = true;
				}

			}

			catch (Exception)
			{

			}

			return result;
		}
	}
}
