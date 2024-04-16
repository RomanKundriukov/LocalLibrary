using LocalLibrary.Data;
using LocalLibrary.View;
using Microsoft.EntityFrameworkCore;

namespace LocalLibrary
{
    public partial class App : Application
    {
        LibraryDBContext db = new();
        public App()
        {
            InitializeComponent();

            //MainPage = new AppShell();
            MainPage = new HauptSeiteView();
            //prüfen oder erstellen einen Db
            if (File.Exists(db.DbPath))
            {
                db.Database.Migrate();
            }
            else
            {
                db.Database.EnsureCreated();
            }
        }
    }
}
