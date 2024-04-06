using LocalLibrary.ViewModel;

namespace LocalLibrary.View.NavigationsPanelView;

public partial class NavigationsPanelView : ContentPage
{
    public NavigationsPanelView()
    {
        InitializeComponent();
        BindingContext = new NavigationsPanelViewModel();
    }
}