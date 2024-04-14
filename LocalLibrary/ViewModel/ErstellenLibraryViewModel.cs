using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LocalLibrary.Data;
using LocalLibrary.View.ContentView;
using System.Collections.ObjectModel;

namespace LocalLibrary.ViewModel
{
    public partial class ErstellenLibraryViewModel : ObservableObject
    {
        ErstellenLibraryView? erstellenLibraryView;

        [ObservableProperty]
        public ObservableCollection<string> allDriversCollections = new();

        [ObservableProperty]
        public ObservableCollection<string> allDisks = new();

        [ObservableProperty]
        public string auswehlteElement = "";

        [ObservableProperty]
        public string allgemeinName = "";

        [RelayCommand]
        public async Task erstellungDirectory()
        {
            //create library

            string fullLibraryPath = Path.Combine(auswehlteElement, allgemeinName);

            try
            {
                if (!Directory.Exists(fullLibraryPath))
                {
                    Directory.CreateDirectory(fullLibraryPath);
                }
                else
                {
                    await erstellenLibraryView.DisplayAlert("Ошибка", "Директория библиотеки уже существует", "OK");
                }
            }
            catch (Exception ex)
            {
                await erstellenLibraryView.DisplayAlert("Ошибка", "Директория библиотеки не была создана", "ОК");
            }
        }

        //Bekommen die Buchstaben von alles Disk
        public void diskBuchstabe()
        {
            foreach (var drive in LocalDiskPC.diskBuchstabe())
            {
                allDriversCollections.Add(drive.ToString());
                OnPropertyChanged(nameof(allDriversCollections));

                allDisks.Add(drive.ToString());
                OnPropertyChanged(nameof(allDisks));
            }
        }
    }
}
