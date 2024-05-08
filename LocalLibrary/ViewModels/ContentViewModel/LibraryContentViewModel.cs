using LocalLibrary.Model;

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

        #region Command
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
        #endregion
    }
}
