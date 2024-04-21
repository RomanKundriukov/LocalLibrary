using LocalLibrary.Data;
using LocalLibrary.ViewModel;

namespace LocalLibrary.Views.ContentView;

public partial class StartPage : ContentPage
{
    LibraryDBContext db = new();

    public StartPage()
    {
        InitializeComponent();
        BindingContext = new StartContentViewModel();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
    }

    protected override void OnDisappearing() { base.OnDisappearing(); }

    private async void ObjectClicked(object sender, EventArgs e)
    {
        //await Navigation.PushAsync(new Test()); // OtherPage - страница, на которую нужно перейти
    }
}