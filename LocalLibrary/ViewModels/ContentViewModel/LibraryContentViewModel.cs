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
        #endregion

        #region Command
        #endregion

        #region Logik
        public void DatenInitialisierung()
        {
            libraryName = Daten.libraryName;
            OnPropertyChanged(nameof(LibraryName));
        }
        #endregion
    }
}
