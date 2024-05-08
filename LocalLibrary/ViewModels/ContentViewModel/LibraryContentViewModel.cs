using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using CommunityToolkit.Mvvm.Input;
using LocalLibrary.Model;
using LocalLibrary.Services;
using System.Data;

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
        #endregion


        #region Logik
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
                    string ordnerPath = libraryPath;
                    string fileName = Path.Combine(ordnerPath, $"{libraryName}.pdf");

                    foreach (var file in buch)
                    {
                        using (var stream = await file.OpenReadAsync())
                        using (var fileStream = File.OpenWrite(fileName))
                        {
                            await stream.CopyToAsync(fileStream);
                        }
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

            //if (allgemeinName == "" || auswehlteElement == "")
            //{
            //    toastShow("Выберите диск и введите название библиотеки");
            //    return;
            //}
            //else
            //{
            //    try
            //    {
            //        var photo = await MediaPicker.PickPhotoAsync();

            //        if (photo != null)
            //        {
            //            string ordnerPath = PathImages.GetPathImages();
            //            string fileName = Path.Combine(ordnerPath, $"{allgemeinName}.png");

            //            using (var stream = await photo.OpenReadAsync())
            //            using (var fileStream = File.OpenWrite(fileName))
            //            {
            //                await stream.CopyToAsync(fileStream);
            //            }



            //            fotoIsUpload = true;
            //            OnPropertyChanged(nameof(FotoIsUpload));
            //            imageSource = fileName;
            //            OnPropertyChanged(nameof(ImageSource));
            //            toastShow("Фото успешно загружено");
            //        }
            //    }
            //    catch (Exception)
            //    {
            //        fotoIsUpload = false;
            //        OnPropertyChanged(nameof(FotoIsUpload));
            //        toastShow("Фото не было загружено");
            //    }
            //}

        }

        #endregion
    }
}
