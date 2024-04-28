using LocalLibrary.Model;
using LocalLibrary.Services;
using Microsoft.EntityFrameworkCore;

namespace LocalLibrary.Data
{
    public class LibraryDBContext : DbContext
    {
        public DbSet<LibraryDB> LibraryDBs { get; set; }
        public DbSet<BuchDB> BuchDBs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connectionString = $"Filename={PathDb.GetPath("LocalLibrary.db")}";
            optionsBuilder.UseSqlite(connectionString);
        }
    }
}
