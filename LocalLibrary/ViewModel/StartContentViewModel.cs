using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LocalLibrary.View.ContentView;

namespace LocalLibrary.ViewModel
{
    public partial class StartContentViewModel : ObservableObject
    {
        [ObservableProperty]
        private string _title = "Title";
        [RelayCommand]
        public void test()
        {
            _title = "Roman";
            OnPropertyChanged(nameof(Title));
            //await Shell.Current.GoToAsync(nameof(NewPage1));
        }

        [RelayCommand]
        public async Task nav()
        {
            Test test = new Test();
            await Shell.Current.GoToAsync(nameof(test));

        }
    }
}
