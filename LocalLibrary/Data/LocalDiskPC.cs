namespace LocalLibrary.Data
{
    public static class LocalDiskPC
    {

        //Bekommen die Buchstaben von alles Disk
        public static Array diskBuchstabe()
        {
            DriveInfo[] addDrivers = DriveInfo.GetDrives();

            return addDrivers;
        }

        //bekomm Lybrary Path
        //public static string libraryPath()
        //{

        //}
    }
}
