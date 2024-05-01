namespace LocalLibrary.ViewModels.PopupViewModel
{
    public partial class PopupMeldungViewModel : BaseViewModel
    {
        #region ObservableProperties
        [ObservableProperty]
        public string _meldung = "Все отлично!";
        #endregion

        #region Logik
        public string setMeldungMessage(string message)
        {
            OnPropertyChanged(nameof(Meldung));
            return _meldung = message;
        }
        #endregion

        #region Command
        #endregion
    }
}
