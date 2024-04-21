using LocalLibrary.Model;
using Microsoft.EntityFrameworkCore;

namespace LocalLibrary.Data
{
    public class LibraryDBContext : DbContext
    {
        public string DbPath { get; set; }
        public DbSet<LibraryDB> LibraryDBs { get; set; }
        public DbSet<BuchDB> BuchDBs { get; set; }

        public LibraryDBContext()
        {
            var folder = Environment.SpecialFolder.LocalApplicationData;
            var path = Environment.GetFolderPath(folder);
            DbPath = System.IO.Path.Join(path, "Library.db");

            if (File.Exists(DbPath))
            {
                Database.Migrate();
            }
            else
            {
                File.Create(DbPath);
                Database.EnsureCreated();
            }
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite($"Data Source={DbPath}");
        }
    }
}
