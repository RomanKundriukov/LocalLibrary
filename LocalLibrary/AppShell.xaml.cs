using LocalLibrary.Views.ContentView;
using LocalLibrary.Views.NavigationsPanelView;

namespace LocalLibrary
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(HauptSeitePage), typeof(HauptSeitePage));
            Routing.RegisterRoute(nameof(StartPage), typeof(StartPage));
            Routing.RegisterRoute(nameof(NavPage), typeof(NavPage));
            Routing.RegisterRoute(nameof(ErstellenLibraryPage), typeof(ErstellenLibraryPage));
            Routing.RegisterRoute(nameof(AufmachenLibraryPage), typeof(AufmachenLibraryPage));
        }
    }
}
