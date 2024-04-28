using LocalLibrary.Data;

namespace LocalLibrary.Services
{
    public static class PathDb
    {

        public static string GetPath(string nameDb)
        {
            string pathDbSqlite = string.Empty;

            pathDbSqlite = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            pathDbSqlite = Path.Combine(pathDbSqlite, nameDb);

            return pathDbSqlite;
        }

        public static void isDbExist()
        {
            if (File.Exists(PathDb.GetPath("LocalLibrary.db")))
            {
                return;
            }
            else
            {
                LibraryDBContext dBContext = new LibraryDBContext();
                dBContext.Database.EnsureCreated();
            }
        }
    }
}

