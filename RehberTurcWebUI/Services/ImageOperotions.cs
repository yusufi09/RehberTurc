﻿namespace RehberTurcWebUI.Services
{

	public class ImageOperations
	{
		private static string GenerateUniqueFileName(string fileExtension = ".png")
		{
			var timestamp = DateTime.Now.ToString("yyyyMMddHHmmssfff");
			var uniqueName = $"{timestamp}{fileExtension}";

			return uniqueName;
		}

		public static async Task<string> UploadImageAsync(IFormFile file)
		{
			string newFileName = GenerateUniqueFileName();
			var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\html\\images", newFileName);

			using (var stream = new FileStream(path, FileMode.Create))
			{
				await file.CopyToAsync(stream);
			}
			return newFileName;
		}

		public static void DeleteImage(string fileName)
		{
			var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\html\\images", fileName);
			if (System.IO.File.Exists(path))
			{
				System.IO.File.Delete(path);
			}
		}
	}
}
