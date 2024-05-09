using LocalLibrary.Models;
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
        vm.GetAllBuch();
        base.OnAppearing();

    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
    }

    public void Refresh(object sender, EventArgs e)
    {
        vm.Collections.Clear();
        vm.GetAllBuch();
        //OnAppearing();
    }

    public void OnCollectionViewSelectionChanged(object sender, SelectionChangedEventArgs e)
    {


        var previous = e.PreviousSelection;
        var current = e.CurrentSelection;

        List<LocalBuchCollection> collections = e.CurrentSelection.Cast<LocalBuchCollection>().ToList();
        vm.selectDrive(collections);
    }
}