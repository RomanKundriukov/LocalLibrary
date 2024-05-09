using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using CommunityToolkit.Mvvm.Input;
using LocalLibrary.Model;
using LocalLibrary.Models;
using LocalLibrary.Services;
using System.Data;
using System.Diagnostics;

namespace LocalLibrary.ViewModels.ContentViewModel
{
    [QueryProperty("Daten", "Daten")]
    public partial class LibraryContentViewModel : BaseViewModel
    {

        #region Daten
        public LibraryDB Daten { get; set; }

        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            Daten = query["libraryName"] as LibraryDB;
        }


        #endregion

        #region ObservableProperty
        [ObservableProperty]
        public string libraryName = "";
        [ObservableProperty]
        public string libraryIcon = "logo.png";
        [ObservableProperty]
        List<LocalBuchCollection> collections = new();

        public string ausgeWahlteBuch { get; set; }
        public string filePath { get; set; }
        #endregion


        #region Logik

        public void selectDrive(List<LocalBuchCollection> lib)
        {
            collections = lib;
            ausgeWahlteBuch = collections[0].BuchName;
            filePath = collections[0].FilePath;
        }


        public void GetAllBuch()
        {
            string pathDb = PathDb.GetPath("LocalLibrary.db");
            string sqlCommand = "SELECT * FROM [BuchDBs]";

            var allBuch = SqliteCommand.GetAllBuch(pathDb, sqlCommand);

            foreach (DataRow row in allBuch.Rows)
            {
                //LocalLibraryCollection localLibraryCollection = new()
                //{
                //    LibraryName = row["libraryName"].ToString(),
                //    LibraryIcon = row["libraryIconPath"].ToString()
                //};

                collections.Add(new LocalBuchCollection
                {
                    BuchAutor = row["buchAutor"].ToString(),
                    BuchType = row["buchType"].ToString(),
                    BuchName = row["buchName"].ToString(),
                    FilePath = row["filePath"].ToString()
                });
                //allLibraryCollections.Add(row["libraryName"].ToString());

                //allLibraryImagePathCollections.Add(row["libraryIconPath"].ToString());

            }
            OnPropertyChanged(nameof(Collections));
        }

        public void DatenInitialisierung()
        {
            libraryName = Daten.libraryName;
            if (Daten.libraryIconPath != null)
            {
                libraryIcon = Daten.libraryIconPath;
            }
            else
            {
                libraryIcon = "logo.png";
            }
            OnPropertyChanged(nameof(LibraryName));
            OnPropertyChanged(nameof(LibraryIcon));
        }

        public async void toastShow(string message)
        {
            CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();

            ToastDuration duration = ToastDuration.Short;

            var toast = Toast.Make(message, duration);

            await toast.Show(cancellationTokenSource.Token);

            //datenUpdate(allgemeinName);
        }
        #endregion

        #region Command


        [RelayCommand]
        public void buchAufmachen()
        {
            if (File.Exists(filePath))
            {
                try
                {
                    // Öffnen Sie die Datei mit der Standardanwendung
                    Process.Start(new ProcessStartInfo(filePath)
                    {
                        UseShellExecute = true
                    });


                    //byte[] pdfBytes = File.ReadAllBytes(filePath);
                    //var fileContent = File.ReadAllTextAsync(filePath);
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        [RelayCommand]
        public void deleteBuch()
        {
            string pathDb = PathDb.GetPath("LocalLibrary.db");
            //bekommen id von Library
            string sqlCommand = $"SELECT libraryID FROM [LibraryDBs] WHERE [libraryName] = '{libraryName}'";
            int libraryId = SqliteCommand.GetIdLibrary(pathDb, sqlCommand);

            //bekommen LibraryPath
            string libraryPath = "";
            string sqlCommandPath = $"SELECT libraryPath FROM [LibraryDBs] WHERE [libraryID] = '{libraryId}'";
            var dataTable = SqliteCommand.GetLibraryPathByLibraryId(pathDb, sqlCommandPath);

            foreach (DataRow row in dataTable.Rows)
            {
                libraryPath = row["libraryPath"].ToString();
            }

            try
            {
                File.Delete(filePath);
                string sqlCommandDelete = $"DELETE FROM [BuchDBs] WHERE filePath='{filePath}'";
                SqliteCommand.DeleteBuch(pathDb, sqlCommandDelete);

                toastShow("Книга была удалена");
                OnPropertyChanged(nameof(Collections));
            }
            catch (Exception)
            {

                throw;
            }
        }

        [RelayCommand]
        public async void buchUpload()
        {
            string pathDb = PathDb.GetPath("LocalLibrary.db");

            //bekommen id von Library
            string sqlCommand = $"SELECT libraryID FROM [LibraryDBs] WHERE [libraryName] = '{libraryName}'";
            int libraryId = SqliteCommand.GetIdLibrary(pathDb, sqlCommand);

            //bekommen LibraryPath
            string libraryPath = "";
            string sqlCommandPath = $"SELECT libraryPath FROM [LibraryDBs] WHERE [libraryID] = '{libraryId}'";
            var dataTable = SqliteCommand.GetLibraryPathByLibraryId(pathDb, sqlCommandPath);


            foreach (DataRow row in dataTable.Rows)
            {
                libraryPath = row["libraryPath"].ToString();
            }
            try
            {
                var buch = await FilePicker.PickMultipleAsync();

                if (buch != null)
                {
                    if (File.Exists(buch.ToString()))
                    {
                        toastShow("Книга уже существует");
                    }
                    else
                    {
                        string ordnerPath = libraryPath;
                        string buchName = buch.Select(x => x.FileName).FirstOrDefault();
                        string fileName = Path.Combine(ordnerPath, $"{buchName}");

                        foreach (var file in buch)
                        {
                            using (var stream = await file.OpenReadAsync())
                            using (var fileStream = File.OpenWrite(fileName))
                            {
                                await stream.CopyToAsync(fileStream);
                            }
                        }
                        //set Buch in DB
                        string sqlCommandBuch = $"INSERT INTO [BuchDBs] (buchName, libraryID, filePath) VALUES ('{buchName}',{libraryId}, '{fileName}')";
                        SqliteCommand.SetBuchInDb(pathDb, sqlCommandBuch);

                        toastShow("Книга была сохранена");
                    }

                }
                else
                {
                    toastShow("Файл не выбран");
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        #endregion
    }
}
