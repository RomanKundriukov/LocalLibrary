using LocalLibrary.ViewModels.ContentViewModel;

namespace LocalLibrary.Views.ContentView;

public partial class AufmachenLibraryPage : ContentPage
{
    AufmachenLibraryViewModel vm = new AufmachenLibraryViewModel();
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
