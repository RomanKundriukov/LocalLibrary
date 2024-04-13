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

            string disk = auswehlteElement.ToString();
            string name = allgemeinName;
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
