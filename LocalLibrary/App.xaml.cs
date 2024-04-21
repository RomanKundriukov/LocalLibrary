using LocalLibrary.Data;

namespace LocalLibrary
{
    public partial class App : Application
    {
        LibraryDBContext db = new();
        public App()
        {
            InitializeComponent();

            //MainPage = new AppShell();
            MainPage = new HauptSeitePage();
        }
    }
}
