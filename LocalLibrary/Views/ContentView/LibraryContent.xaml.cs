using LocalLibrary.ViewModels.ContentViewModel;

namespace LocalLibrary.Views.ContentView;

public partial class LibraryContent : ContentPage
{
    LibraryContentViewModel vm = new();
    public LibraryContent()
    {
        InitializeComponent();
        BindingContext = vm;
    }
}