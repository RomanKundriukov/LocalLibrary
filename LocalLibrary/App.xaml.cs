namespace LocalLibrary
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new AppShell();
        }

        protected override Window CreateWindow(IActivationState activationState)
        {
            var window = base.CreateWindow(activationState);

            const int newWidth = 1500;
            const int newHeight = 900;

            window.MaximumHeight = newHeight;
            window.MaximumWidth = newWidth;

            window.MinimumHeight = newHeight;
            window.MinimumWidth = newWidth;

            window.X = 100;
            window.Y = 100;

            //window.SizeChanged();
            return window;
        }
    }
}
