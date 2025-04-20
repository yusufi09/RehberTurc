using RehberTurcDAL.Abstract;
using RehberTurcDAL.Concrete.EfCore;
using RehberTurcBLL.Abstract;
using RehberTurcBLL.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using RehberTurcDAL.Data;
using RehberTurcEntity;

namespace RehberTurcWebUI
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
			// Add services to the container.
			builder.Services.AddControllersWithViews();

			builder.Services.AddDbContext<DataContext>(options =>
			options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

			builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
						  .AddEntityFrameworkStores<DataContext>()
						  .AddDefaultTokenProviders();

			// Identity servislerini ekleyin
			builder.Services.Configure<IdentityOptions>(options =>
			{
				options.Password.RequireDigit = false;
				options.Password.RequiredLength = 6;
				options.Password.RequireNonAlphanumeric = false;
				options.Password.RequireUppercase = false;
				options.Password.RequireLowercase = false;
			});

			builder.Services.AddScoped<ICityPageService, CityPageManager>();
			builder.Services.AddScoped<ICityPageDal, EfCoreCityPageDal>();

			builder.Services.AddScoped<ICustomerService, CustomerManager>();
			builder.Services.AddScoped<ICustomerDal, EfCoreCustomerDal>();

			builder.Services.AddScoped<ICountryService, CountryManager>();
			builder.Services.AddScoped<ICountryDal,EfCoreCountryDal>();

			builder.Services.AddScoped<ICategoryService, CategoryManager>();
			builder.Services.AddScoped<ICategoryDal, EfCoreCategoryDal>();
            var app = builder.Build();


			
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
