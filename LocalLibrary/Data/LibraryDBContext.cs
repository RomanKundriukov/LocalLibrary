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

            string folderPath = @"C:\db";
            string dbFilePath = Path.Combine(folderPath, "Library.db");
            DbPath = dbFilePath;
            try
            {
                // Проверяем, существует ли папка
                if (!Directory.Exists(folderPath))
                {
                    // Создаем папку
                    Directory.CreateDirectory(folderPath);
                    Console.WriteLine("Папка создана успешно.");
                }
                else
                {
                    Console.WriteLine("Папка уже существует.");
                }

                // Проверяем, существует ли файл
                if (!File.Exists(dbFilePath))
                {
                    // Создаем файл
                    File.Create(dbFilePath).Close();
                    Console.WriteLine("Файл базы данных создан успешно.");
                }
                else
                {
                    Console.WriteLine("Файл базы данных уже существует.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка: {ex.Message}");
            }
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connectionString = $"Data Source={DbPath}";
            optionsBuilder.UseSqlite(connectionString);
        }
    }
}
