using RehberTurcDAL.Abstract;
using RehberTurcDAL.Concrete.EfCore;
using RehberTurcBLL.Abstract;
using RehberTurcBLL.Concrete;

namespace RehberTurcWebUI
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
			// Add services to the container.
			builder.Services.AddControllersWithViews();


			builder.Services.AddScoped<ICityPageService, CityPageManager>();
			builder.Services.AddScoped<ICityPageDal, EfCoreCityPageDal>();

			builder.Services.AddScoped<ICustomerService, CustomerManager>();
			builder.Services.AddScoped<ICustomerDal, EfCoreCustomerDal>();

			builder.Services.AddScoped<ICountryService, CountryManager>();
			builder.Services.AddScoped<ICountryDal,EfCoreCountryDal>();

			builder.Services.AddScoped<ICategoryService, CategoryManager>();
			builder.Services.AddScoped<ICategoryDal, EfCoreCategoryDal>();
            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}
