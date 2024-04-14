using LocalLibrary.Model;
using Microsoft.EntityFrameworkCore;

namespace LocalLibrary.Data
{
    public class LibraryDBContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite($"Data Source={DbPath}");
            //base.OnConfiguring(optionsBuilder);
        }

        public DbSet<LibraryDB> LibraryDBs { get; set; }

        public string DbPath { get; set; }

        public LibraryDBContext()
        {
            var folder = Environment.SpecialFolder.LocalApplicationData;
            var path = Environment.GetFolderPath(folder);
            DbPath = System.IO.Path.Join(path, "Library.db");

        }
    }
}
