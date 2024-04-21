using LocalLibrary.ViewModel;

namespace LocalLibrary.Views.ContentView;

public partial class AufmachenLibraryPage : ContentPage
{
    AufmachenLibraryViewModel vm = new();
    public AufmachenLibraryPage()
    {
        InitializeComponent();
        BindingContext = vm;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
    }

    protected override void OnDisappearing() { base.OnDisappearing(); }
}
