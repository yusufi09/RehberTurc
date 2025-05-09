﻿using RehberTurcDAL.Abstract;
using RehberTurcDAL.Concrete.EfCore;
using RehberTurcBLL.Abstract;
using RehberTurcBLL.Concrete;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using RehberTurcDAL.Data;
using RehberTurcEntity;
using RehberTurcDAL.Mapping;

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

			

			builder.Services.AddScoped<ICityPageService, CityPageManager>();
			builder.Services.AddScoped<ICityPageDal, EfCoreCityPageDal>();

			builder.Services.AddScoped<IUserService, UserManager>();
			builder.Services.AddScoped<IUserDal, EfCoreUserDal>();

			builder.Services.AddScoped<ICountryService, CountryManager>();
			builder.Services.AddScoped<ICountryDal,EfCoreCountryDal>();

			builder.Services.AddScoped<ICategoryService, CategoryManager>();
			builder.Services.AddScoped<ICategoryDal, EfCoreCategoryDal>();


			builder.Services.AddAutoMapper(typeof(MappingProfile));
			
			var app = builder.Build();

			app.MapControllerRoute(
			   name: "cityDetail",
			   pattern: "CityDetail/{cityName}",
			   defaults: new { controller = "CityDetail", action = "Index" });
			// Identity servislerini ekleyin
			//builder.Services.Configure<IdentityOptions>(options =>
			//{
			//	options.Password.RequireDigit = false;
			//	options.Password.RequiredLength = 6;
			//	options.Password.RequireNonAlphanumeric = false;
			//	options.Password.RequireUppercase = false;
			//	options.Password.RequireLowercase = false;
			//});

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
