using LocalLibrary.ViewModel;

namespace LocalLibrary.View.ContentView;

public partial class StartContentView : ContentPage
{
    public StartContentView()
    {
        InitializeComponent();
        BindingContext = new StartContentViewModel();
    }
    private async void ObjectClicked(object sender, EventArgs e)
    {
        //await Navigation.PushAsync(new Test()); // OtherPage - страница, на которую нужно перейти
    }
}