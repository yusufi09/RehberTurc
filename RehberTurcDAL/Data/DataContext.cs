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
		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		{
			optionsBuilder.UseSqlServer("Server=LAPTOP-FJ16G18N; Database=RehberTurc; Integrated Security=True; TrustServerCertificate=True;");
		}
		//public DataContext(DbContextOptions<DataContext> options) : base(options)
		//{
		//}


		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			
			// 🆕 Identity şeması için base methodu çağır
			base.OnModelCreating(modelBuilder);



			modelBuilder.Entity<AirbnbComment>()
				.HasOne(ac => ac.Customer)
				.WithMany(c => c.AirbnbComments)
				.HasForeignKey(ac => ac.CustomerId)
				.OnDelete(DeleteBehavior.Restrict); // Müşteri silinmeye çalışılırsa hata verir

			// Aynı şekilde CafeComment için
			modelBuilder.Entity<CafeComment>()
				.HasOne(cc => cc.Customer)
				.WithMany(c => c.CafeComments)
				.HasForeignKey(cc => cc.CustomerId)
				.OnDelete(DeleteBehavior.Restrict);

			modelBuilder.Entity<CarComment>()
				.HasOne(bc => bc.Customer)
				.WithMany(c=>c.CarComments)
				.HasForeignKey(bc=>bc.CustomerId)
				.OnDelete(DeleteBehavior.Restrict);

			modelBuilder.Entity<KulturComment>()
				.HasOne(dc=> dc.Customer)
				.WithMany(c => c.KulturComments)
				.HasForeignKey(dc => dc.CustomerId)
				.OnDelete(DeleteBehavior.Restrict);

			modelBuilder.Entity<OtelComment>()
				.HasOne(fc => fc.Customer)
				.WithMany(c => c.OtelComments)
				.HasForeignKey(fc => fc.CustomerId)
				.OnDelete(DeleteBehavior.Restrict);
			modelBuilder.Entity<CityComment>()
				.HasOne(cc => cc.Customer)
				.WithMany(c => c.CityComments)
				.HasForeignKey(cc => cc.CustomerId)
				.OnDelete(DeleteBehavior.Restrict);
		}

		public DbSet<ApplicationUser> ApplicationUsers { get; set; }
		public DbSet<Country>  Countries { get; set; }
		public DbSet<City> Cities { get; set; }
		public DbSet<Customer> Customers { get; set; }
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
	}
}
