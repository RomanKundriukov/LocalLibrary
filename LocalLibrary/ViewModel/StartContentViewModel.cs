using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LocalLibrary.View.ContentView;

namespace LocalLibrary.ViewModel
{
    public partial class StartContentViewModel : ObservableObject
    {
        [RelayCommand]
        public async Task nav1()
        {
            await Shell.Current.GoToAsync(nameof(NewPage1));
        }

        [RelayCommand]
        public async Task nav2()
        {
            await Shell.Current.GoToAsync(nameof(NewPage2));
        }
    }
}
