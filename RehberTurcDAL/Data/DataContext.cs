using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using RehberTurcEntity;
using RehberTurcEntity.Class;
using System;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;

namespace RehberTurcDAL.Data
{
    public class DataContext:IdentityDbContext<ApplicationUser>
	{
		//protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		//{
		//	optionsBuilder.UseSqlServer("Server=LAPTOP-FJ16G18N; Database=RehberTurc; Integrated Security=True; TrustServerCertificate=True;");
		//}
		public DataContext(DbContextOptions<DataContext> options) : base(options)
		{
		}


		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);

			modelBuilder.Entity<AirbnbComment>()
				.HasOne(ac => ac.User)
				.WithMany(c => c.AirbnbComments)
				.HasForeignKey(ac => ac.UserId)
				.OnDelete(DeleteBehavior.Restrict); // Müşteri silinmeye çalışılırsa hata verir

			// Aynı şekilde CafeComment için
			modelBuilder.Entity<CafeComment>()
				.HasOne(cc => cc.User)
				.WithMany(c => c.CafeComments)
				.HasForeignKey(cc => cc.UserId)
				.OnDelete(DeleteBehavior.Restrict);

			modelBuilder.Entity<CarComment>()
				.HasOne(bc => bc.User)
				.WithMany(c=>c.CarComments)
				.HasForeignKey(bc=>bc.UserId)
				.OnDelete(DeleteBehavior.Restrict);

			modelBuilder.Entity<KulturComment>()
				.HasOne(dc=> dc.User)
				.WithMany(c => c.KulturComments)
				.HasForeignKey(dc => dc.UserId)
				.OnDelete(DeleteBehavior.Restrict);

			modelBuilder.Entity<OtelComment>()
				.HasOne(fc => fc.User)
				.WithMany(c => c.OtelComments)
				.HasForeignKey(fc => fc.UserId)
				.OnDelete(DeleteBehavior.Restrict);
			modelBuilder.Entity<CityComment>()
				.HasOne(cc => cc.User)
				.WithMany(c => c.CityComments)
				.HasForeignKey(cc => cc.UserId)
				.OnDelete(DeleteBehavior.Restrict);

		    modelBuilder.Entity<OtelFavorite>()
	            .HasOne(hf => hf.User)
	            .WithMany(u => u.OtelFavorites)
	            .HasForeignKey(hf => hf.UserId);

			modelBuilder.Entity<CarFavorite>()
				.HasOne(cf => cf.User)
				.WithMany(u => u.CarFavorites)
				.HasForeignKey(cf => cf.UserId);

			modelBuilder.Entity<KulturFavorite>()
				.HasOne(cf => cf.User)
				.WithMany(u => u.KulturFavorites)
				.HasForeignKey(cf => cf.UserId);
			modelBuilder.Entity<CityFavorite>()
				.HasOne(cf => cf.User)
				.WithMany(u => u.CityFavorites)
				.HasForeignKey(cf => cf.UserId);
			modelBuilder.Entity<CafeFavorite>()
				.HasOne(cf => cf.User)
				.WithMany(u => u.CafeFavorites)
				.HasForeignKey(cf => cf.UserId);
			modelBuilder.Entity<AirbnbFavorite>()
				.HasOne(cf => cf.User)
				.WithMany(u => u.AirbnbFavorites)
				.HasForeignKey(cf => cf.UserId);
		}

		public DbSet<ApplicationUser> ApplicationUsers { get; set; }
		public DbSet<Country>  Countries { get; set; }
		public DbSet<City> Cities { get; set; }
		public DbSet<Otel> Otels { get; set; }
		public DbSet<Kultur> Kulturs { get; set; }
		public DbSet<Airbnb> Airbnbs { get; set; }
		public DbSet<Cafe> Cafes { get; set; }
		public DbSet<Car> Cars { get; set; }
		public DbSet<Category> Categories { get; set; }
		public DbSet<OtelImage> OtelImages { get; set; }
		public DbSet<AirbnbImage> AirbnbImages { get; set; }
		public DbSet<KulturImage> KulturImages { get; set; }
		public DbSet<CafeImage> CafeImages { get; set; }
		public DbSet<CarImage> CarImages { get; set; }
		public DbSet<OtelComment> OtelComments { get; set; }
		public DbSet<AirbnbComment> AirbnbComments { get; set; }
		public DbSet<KulturComment> KulturComments { get; set; }
		public DbSet<CafeComment> CafeComments { get; set; }
		public DbSet<CarComment> CarComments { get; set; }
		public DbSet<CityComment> CityComments { get; set; }
		public DbSet<OtelFavorite> OtelFavorites { get; set; }
		public DbSet<CarFavorite> CarFavorites { get; set; }
		public DbSet<KulturFavorite> KulturFavorites { get; set; }
		public DbSet<CafeFavorite> CafeFavorites { get; set; }
		public DbSet<AirbnbFavorite> AirbnbFavorites { get; set; }
		public DbSet<CityFavorite> CityFavorites { get; set; }
	}
}
