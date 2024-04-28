using LocalLibrary.ViewModels.ContentViewModel;

namespace LocalLibrary.Views.ContentView;

public partial class ErstellenLibraryPage : ContentPage
{
    ErstellenLibraryViewModel vm = new ErstellenLibraryViewModel();
    public ErstellenLibraryPage()
    {
        InitializeComponent();
        BindingContext = vm;
    }

    protected override void OnAppearing()
    {
        vm.diskBuchstabe();
        base.OnAppearing();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
    }

    public void GetAllert(string fehler, string allert, string ok)
    {
        DisplayAlert(fehler, allert, ok);
    }

}