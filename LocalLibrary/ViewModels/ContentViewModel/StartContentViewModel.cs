using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using CommunityToolkit.Mvvm.Input;
using LocalLibrary.Data;
using LocalLibrary.Models;
using LocalLibrary.Services;
using LocalLibrary.Views.ContentView;
using System.Collections.ObjectModel;
using System.Data;

namespace LocalLibrary.ViewModels.ContentViewModel
{
    public partial class StartContentViewModel : BaseViewModel
    {

        #region Logik
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

        public async void toastShow(string message)
        {
            CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();

            ToastDuration duration = ToastDuration.Short;

            var toast = Toast.Make(message, duration);

            await toast.Show(cancellationTokenSource.Token);

            datenUpdate(allgemeinName);
        }

        public void datenUpdate(string libraryName)
        {
            libraryName = "";

            allgemeinName = libraryName;
            OnPropertyChanged(nameof(AllgemeinName));
        }

        public void GetAllLibrary()
        {
            string pathDb = PathDb.GetPath("LocalLibrary.db");
            string sqlCommand = "SELECT * FROM [LibraryDBs]";

            var allLibrary = SqliteCommand.GetAlllibrary(pathDb, sqlCommand);

            foreach (DataRow row in allLibrary.Rows)
            {
                //LocalLibraryCollection localLibraryCollection = new()
                //{
                //    LibraryName = row["libraryName"].ToString(),
                //    LibraryIcon = row["libraryIconPath"].ToString()
                //};

                collections.Add(new LocalLibraryCollection
                {
                    LibraryIcon = row["libraryIconPath"].ToString(),
                    LibraryName = row["libraryName"].ToString()
                });
                //allLibraryCollections.Add(row["libraryName"].ToString());

                //allLibraryImagePathCollections.Add(row["libraryIconPath"].ToString());

            }
            OnPropertyChanged(nameof(collections));
        }

        public void selectDrive(List<LocalLibraryCollection> lib)
        {
            localLibraryCollections = lib;
        }
        #endregion

        #region ObservableProperties

        List<LocalLibraryCollection> localLibraryCollections = new();

        //Create Library

        [ObservableProperty]
        public ObservableCollection<string> allDriversCollections = new();

        [ObservableProperty]
        public ObservableCollection<string> allDisks = new();

        [ObservableProperty]
        public string auswehlteElement = "";

        [ObservableProperty]
        public string allgemeinName = "";

        [ObservableProperty]
        public bool fotoIsUpload = false;

        [ObservableProperty]
        public string imageSource = "";

        [ObservableProperty]
        LocalLibraryCollection localLibraryCollection = new();

        //Aufmachen und Delete Library

        [ObservableProperty]
        public ObservableCollection<LocalLibraryCollection> collections = new();


        #endregion

        #region Commands




        [RelayCommand]
        public async Task aufmachenDirectory()
        {
            if (auswehlteElement == null)
            {
                toastShow("Выберите библиотеку");
                return;
            }
            else
            {
                await Shell.Current.GoToAsync(nameof(LibraryContent));
            }
        }

        [RelayCommand]
        public async Task erstellungDirectory()
        {
            if (allgemeinName == "" || auswehlteElement == "")
            {
                toastShow("Выберите диск и введите название библиотеки");
                return;
            }
            else
            {
                //create library



                string fullLibraryPath = Path.Combine(auswehlteElement, allgemeinName);
                string fullLibraryIconPath = Path.Combine(PathImages.GetPathImages(), $"{allgemeinName}.png");

                string sqlCommand = "";
                if (fotoIsUpload)
                {
                    sqlCommand = $"INSERT INTO [LibraryDBs] (libraryName, libraryPath, libraryIconName, libraryIconPath) VALUES ('{allgemeinName}', '{fullLibraryPath}', '{allgemeinName}.png', '{fullLibraryIconPath}')";
                }
                else
                {
                    sqlCommand = $"INSERT INTO [LibraryDBs] (libraryName, libraryPath, libraryIconName, libraryIconPath) VALUES ('{allgemeinName}', '{fullLibraryPath}', 'default', 'default')";
                }
                string pathDb = PathDb.GetPath("LocalLibrary.db");

                string sqlCommandLike = $"SELECT * FROM [LibraryDBs] WHERE libraryName = '{allgemeinName}'";
                try
                {
                    if (!Directory.Exists(fullLibraryPath))
                    {
                        if (!SqliteCommand.isExistiert(pathDb, sqlCommandLike))
                        {
                            Directory.CreateDirectory(fullLibraryPath);

                            SqliteCommand.SetPathDb(pathDb, sqlCommand);
                            toastShow("Библиотка была успешно создана");
                        }
                        else
                        {
                            toastShow("Директория библиотеки уже существует");
                        }
                    }
                    else
                    {
                        toastShow("Директория библиотеки уже существует");
                    }
                }
                catch (Exception ex)
                {
                    toastShow("Директория библиотеки не была создана");
                }
            }

        }

        [RelayCommand]
        public async void IconLibraryUploaad()
        {
            if (allgemeinName == "" || auswehlteElement == "")
            {
                toastShow("Выберите диск и введите название библиотеки");
                return;
            }
            else
            {
                try
                {
                    var photo = await MediaPicker.PickPhotoAsync();

                    if (photo != null)
                    {
                        string ordnerPath = PathImages.GetPathImages();
                        string fileName = Path.Combine(ordnerPath, $"{allgemeinName}.png");

                        using (var stream = await photo.OpenReadAsync())
                        using (var fileStream = File.OpenWrite(fileName))
                        {
                            await stream.CopyToAsync(fileStream);
                        }
                        fotoIsUpload = true;
                        OnPropertyChanged(nameof(FotoIsUpload));
                        imageSource = fileName;
                        OnPropertyChanged(nameof(ImageSource));
                        toastShow("Фото успешно загружено");
                    }
                }
                catch (Exception)
                {
                    fotoIsUpload = false;
                    OnPropertyChanged(nameof(FotoIsUpload));
                    toastShow("Фото не было загружено");
                }
            }

        }

        #endregion



    }
}
