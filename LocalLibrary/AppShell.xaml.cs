using LocalLibrary.Views.ContentView;

namespace LocalLibrary
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(StartPage), typeof(StartPage));
        }
    }
}
