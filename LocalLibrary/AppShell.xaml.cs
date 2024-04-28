using LocalLibrary.Views.ContentView;

namespace LocalLibrary
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(StartPage), typeof(StartPage));
            Routing.RegisterRoute(nameof(ErstellenLibraryPage), typeof(ErstellenLibraryPage));
            Routing.RegisterRoute(nameof(AufmachenLibraryPage), typeof(AufmachenLibraryPage));
        }
    }
}
