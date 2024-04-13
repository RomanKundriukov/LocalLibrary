using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;

namespace LocalLibrary.ViewModel
{
    public partial class ErstellenLibraryViewModel : ObservableObject
    {
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

            string driveLetter = auswehlteElement.ToString();
            string folderName = allgemeinName;

            string fullLibraryPath = Path.Combine(driveLetter, folderName);

            try
            {
                Directory.CreateDirectory(fullLibraryPath);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при создании папки: {ex.Message}");
            }
        }

        //Bekommen die Buchstaben von alles Disk
        public void diskBuchstabe()
        {
            //bekommen alle Disk im Gerät

            DriveInfo[] allDrivers = DriveInfo.GetDrives();

            foreach (var drive in allDrivers)
            {
                allDriversCollections.Add(drive.Name.ToString());
                OnPropertyChanged(nameof(allDriversCollections));

                allDisks.Add(drive.Name.ToString());
                OnPropertyChanged(nameof(allDisks));
            }
        }
    }
}
