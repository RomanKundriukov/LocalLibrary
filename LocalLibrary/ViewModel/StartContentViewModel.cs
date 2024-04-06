using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

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
    }
}
