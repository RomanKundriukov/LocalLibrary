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

    protected override void OnAppearing()
    {
        base.OnAppearing();

        //bekommen alle Disknamen
        vm.diskBuchstabe();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
    }
}