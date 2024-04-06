using LocalLibrary.View.ContentView;
using LocalLibrary.ViewModel;

namespace LocalLibrary.View.NavigationsPanelView;

public partial class NavigationsPanelView : ContentPage
{
    public NavigationsPanelView()
    {
        InitializeComponent();
        BindingContext = new NavigationsPanelViewModel();
    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new NewPage1());
    }

}