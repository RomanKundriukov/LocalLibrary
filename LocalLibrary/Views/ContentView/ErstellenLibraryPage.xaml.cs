using LocalLibrary.ViewModel;

namespace LocalLibrary.Views.ContentView;

public partial class ErstellenLibraryPage : ContentPage
{
    ErstellenLibraryViewModel vm = new();
    public ErstellenLibraryPage()
    {
        InitializeComponent();
        BindingContext = vm;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();

        //bekommen alle Disknamen
        vm.diskBuchstabe();
        ////bekommen alle Disknamen
        //vm.GetAllDriversCollections();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
    }
}