using RehberTurcDAL.Abstract;
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
			builder.Services.Configure<IdentityOptions>(options =>
			{
				//password
				options.Password.RequireDigit = true;
				options.Password.RequireLowercase = true;
				options.Password.RequireUppercase = true;
				options.Password.RequireNonAlphanumeric = true;
				options.Password.RequiredLength = 6;

				options.Lockout.MaxFailedAccessAttempts = 5; //5 hatalý giriþ hakký
				options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(5); //5 hatalý giriþ sonrasý 5dk giriþ kilitlensin
				options.Lockout.AllowedForNewUsers = true; //Her yeni üye için bu özelliði ver.


				//user
				options.User.RequireUniqueEmail = true; //Benzersiz Email zorunluluðu
														//options.User.AllowedUserNameCharacters = ""; //Username de izin verilen özel karakterler

				options.SignIn.RequireConfirmedEmail = false; //Kayýt sonrasý giriþ yapabilmek için Emaili onaylamalý
				options.SignIn.RequireConfirmedPhoneNumber = false; //Kayýt sonrasý giriþ yapabilmek için Telefon numarasý onaylamalý
			});

			//Configure Cookie
			builder.Services.ConfigureApplicationCookie(options =>
			{
				options.LoginPath = "/User/SignIn";
				//options.LogoutPath = "/User/Logout";
				//options.AccessDeniedPath = "/User/AccessDenied";
				options.ExpireTimeSpan = TimeSpan.FromMinutes(60); //Oturum süresi
				options.SlidingExpiration = true; //Herhangi bir harekette süresi tekrar baþlat
				options.Cookie = new CookieBuilder
				{
					HttpOnly = true,
					Name = "Organic.Security.Cookie",
					SameSite = SameSiteMode.Strict //Oturumu serverdan kullanýcý browserýna taþýdýk
				};
			});


			builder.Services.AddScoped<ICityPageService, CityPageManager>();
			builder.Services.AddScoped<ICityPageDal, EfCoreCityPageDal>();

			builder.Services.AddScoped<IUserService, UserManager>();
			builder.Services.AddScoped<IUserDal, EfCoreUserDal>();

			builder.Services.AddScoped<ICountryService, CountryManager>();
			builder.Services.AddScoped<ICountryDal,EfCoreCountryDal>();

			builder.Services.AddScoped<ICategoryService, CategoryManager>();
			builder.Services.AddScoped<ICategoryDal, EfCoreCategoryDal>();

			builder.Services.AddScoped<ICalanderService, CalanderManager>();
			builder.Services.AddScoped<ICalanderDal, EfCoreCalanderDal>();

			builder.Services.AddScoped<IMailService, MailManager>();
			builder.Services.AddScoped<IMailDal, EfCoreMailDal>();

			builder.Services.AddScoped<IOtelService, OtelManager>();
			builder.Services.AddScoped<IOtelDal, EfCoreOtelDal>();


			builder.Services.AddScoped<IListingService, ListingManager>();
			builder.Services.AddScoped<IListingDal, EfCoreListingDal>();


			builder.Services.AddScoped<IEventService, EventManager>();
			builder.Services.AddScoped<IEventDal, EfCoreEventDal>();

			builder.Services.AddAutoMapper(typeof(MappingProfile));
			
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
