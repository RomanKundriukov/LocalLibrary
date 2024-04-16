using LocalLibrary.Model;
using Microsoft.EntityFrameworkCore;

namespace LocalLibrary.Data
{
    public class LibraryDBContext : DbContext
    {
        public string DbPath { get; set; }
        //public LibraryDBContext()
        //{
        //    var folder = Environment.SpecialFolder.LocalApplicationData;
        //    var path = Environment.GetFolderPath(folder);
        //    DbPath = Path.Combine(path, "Library.db");
        //    if (!File.Exists(DbPath))
        //    {
        //        // Wenn nicht, erstellen Sie die Datei
        //        using (File.Create(DbPath)) { }
        //    }
        //}

        public DbSet<LibraryDB> LibraryDBs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var folder = Environment.SpecialFolder.LocalApplicationData;
            var path = Environment.GetFolderPath(folder);
            DbPath = Path.Combine(path, "Library.db");
            optionsBuilder.UseSqlite($"Data Source={DbPath}");

            if (!File.Exists(DbPath))
            {
                // Wenn nicht, erstellen Sie die Datei
                using (File.Create(DbPath)) { }
            }
            //base.OnConfiguring(optionsBuilder);
        }
    }
}
