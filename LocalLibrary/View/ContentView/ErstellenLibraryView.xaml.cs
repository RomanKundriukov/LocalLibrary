using LocalLibrary.ViewModel;

namespace LocalLibrary.View.ContentView;

public partial class ErstellenLibraryView : ContentPage
{
    ErstellenLibraryViewModel vm = new();

    public ErstellenLibraryView()
    {
        InitializeComponent();
        BindingContext = vm;
    }
}