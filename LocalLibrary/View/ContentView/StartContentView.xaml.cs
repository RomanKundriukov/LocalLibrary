using LocalLibrary.ViewModel;

namespace LocalLibrary.View.ContentView;

public partial class StartContentView : ContentPage
{
    public StartContentView()
    {
        InitializeComponent();
        BindingContext = new StartContentViewModel();
    }
    //public StartContentView(StartContentViewModel vm) : this()
    //{
    //    InitializeComponent();
    //    BindingContext = vm;
    //}
}