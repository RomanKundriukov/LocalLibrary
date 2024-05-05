using CommunityToolkit.Maui.Views;
using LocalLibrary.ViewModels.ContentViewModel;
using LocalLibrary.ViewModels.PopupViewModel;
using LocalLibrary.Views.PopupPages;

namespace LocalLibrary.Views.ContentView;

public partial class StartPage : ContentPage
{
    StartContentViewModel vm = new StartContentViewModel();
    public StartPage()
    {
        InitializeComponent();
        this.BindingContext = vm;
    }

    protected override void OnAppearing()
    {
        vm.collections.Clear();
        vm.diskBuchstabe();
        vm.GetAllLibrary();
        base.OnAppearing();
    }

    protected override void OnDisappearing() { base.OnDisappearing(); }

    public void GetPopup(string message)
    {
        PopupMeldungViewModel popVm = new PopupMeldungViewModel();
        popVm.setMeldungMessage(message);
        PopupMeldung pop = new PopupMeldung();
        this.ShowPopup(pop);
    }

    public void Refresh(object sender, EventArgs e)
    {
        vm.collections.Clear();
        vm.GetAllLibrary();
        //OnAppearing();
    }
}