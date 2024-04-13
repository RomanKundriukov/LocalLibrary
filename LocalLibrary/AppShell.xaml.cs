using LocalLibrary.View;
using LocalLibrary.View.ContentView;
using LocalLibrary.View.NavigationsPanelView;

namespace LocalLibrary
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();

            Routing.RegisterRoute(nameof(HauptSeiteView), typeof(HauptSeiteView));
            Routing.RegisterRoute(nameof(StartContentView), typeof(StartContentView));
            Routing.RegisterRoute(nameof(NavigationsPanelView), typeof(NavigationsPanelView));
            Routing.RegisterRoute(nameof(ErstellenLibraryView), typeof(ErstellenLibraryView));
            Routing.RegisterRoute(nameof(AufmachenLibraryView), typeof(AufmachenLibraryView));

        }
    }
}
