namespace LocalLibrary.Services
{
    public static class PathImages
    {
        public static string GetPathImages()
        {
            string pathImages = string.Empty;

            pathImages = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            pathImages = Path.Combine(pathImages, "ImagesLocalLibrary");

            if (Directory.Exists(pathImages))
            {
                return pathImages;
            }
            else
            {
                Directory.CreateDirectory(pathImages);
                return pathImages;
            }
        }
    }
}
