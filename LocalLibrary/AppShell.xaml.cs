using LocalLibrary.Views.ContentView;

namespace LocalLibrary
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(StartPage), typeof(StartPage));
            Routing.RegisterRoute(nameof(LibraryContent), typeof(LibraryContent));
        }
    }
}
