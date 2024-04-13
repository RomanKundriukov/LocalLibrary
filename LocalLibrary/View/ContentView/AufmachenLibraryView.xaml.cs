using LocalLibrary.ViewModel;

namespace LocalLibrary.View.ContentView;

public partial class AufmachenLibraryView : ContentPage
{
    AufmachenLibraryViewModel vm = new();
    public AufmachenLibraryView()
    {
        InitializeComponent();
        BindingContext = vm;
    }
}