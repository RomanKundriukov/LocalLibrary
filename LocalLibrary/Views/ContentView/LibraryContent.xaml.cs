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

    protected override void OnAppearing()
    {
        vm.DatenInitialisierung();
        base.OnAppearing();

    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
    }
}