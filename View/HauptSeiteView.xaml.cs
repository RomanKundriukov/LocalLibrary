using LocalLibrary.Model;

namespace LocalLibrary.View;

public partial class HauptSeiteView : FlyoutPage
{
    public HauptSeiteView()
    {
        InitializeComponent();
        flyoutPage.collectionView.SelectionChanged += OnSelectionChanged;
    }
    void OnSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        var item = e.CurrentSelection.FirstOrDefault() as FlyoutPageItem;
        if (item != null)
        {
            Detail = new NavigationPage((Page)Activator.CreateInstance(item.TargetType));
            if (!((IFlyoutPageController)this).ShouldShowSplitMode)
                IsPresented = false;
        }
    }

}