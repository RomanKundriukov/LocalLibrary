using LocalLibrary.View;

namespace LocalLibrary
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            //MainPage = new AppShell();

            MainPage = new HauptSeiteView();
        }
    }
}
