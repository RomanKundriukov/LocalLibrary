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
    protected override void OnAppearing()
    {
        base.OnAppearing();
    }

    protected override void OnDisappearing() { base.OnDisappearing(); }
}