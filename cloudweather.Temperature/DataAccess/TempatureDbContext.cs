using Microsoft.EntityFrameworkCore;

namespace Cloudweather.Temperature.DataAccess
{
    public class TempatureDbContext : DbContext
    {
        public TempatureDbContext()
        {

        }
        public TempatureDbContext(DbContextOptions opts) : base(opts)
        {

        }

        public DbSet<Temperature> Temperature { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            SnakeCaseIdentityTableNames(modelBuilder);
        }

        private static void SnakeCaseIdentityTableNames(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Temperature>(b => { b.ToTable("temperature"); });
        }
    }
}
