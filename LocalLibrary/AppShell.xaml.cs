using LocalLibrary.View;
using LocalLibrary.View.ContentView;
using LocalLibrary.View.NavPanelView;

namespace LocalLibrary
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();

            Routing.RegisterRoute(nameof(HauptSeiteView), typeof(HauptSeiteView));
            Routing.RegisterRoute(nameof(StartContentView), typeof(StartContentView));
            Routing.RegisterRoute(nameof(NavPanelView), typeof(NavPanelView));
        }
    }
}
