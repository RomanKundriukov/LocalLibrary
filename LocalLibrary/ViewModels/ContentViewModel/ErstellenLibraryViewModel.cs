using CommunityToolkit.Mvvm.Input;
using LocalLibrary.Data;
using LocalLibrary.Services;
using System.Collections.ObjectModel;

namespace LocalLibrary.ViewModels.ContentViewModel
{
    public partial class ErstellenLibraryViewModel : BaseViewModel
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

            string fullLibraryPath = Path.Combine(auswehlteElement, allgemeinName);
            string sqlCommand = $"INSERT INTO [LibraryDBs] (libraryName, libraryPath) VALUES ('{allgemeinName}', '{fullLibraryPath}')";
            string pathDb = PathDb.GetPath("LocalLibrary.db");

            try
            {
                if (!Directory.Exists(fullLibraryPath))
                {
                    Directory.CreateDirectory(fullLibraryPath);

                    SqliteCommand.SetPathDb(pathDb, sqlCommand);
                }
                else
                {

                    //return ErstellenLibraryPage.GetAllert("Ошибка", "Директория библиотеки уже существует", "ОК");
                }
            }
            catch (Exception ex)
            {
                //erstellenLibraryPage.GetAllert("Ошибка", "Директория библиотеки не была создана", "ОК");
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
