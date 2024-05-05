using LocalLibrary.Data;
using LocalLibrary.Services;
using LocalLibrary.ViewModels.ContentViewModel;
using LocalLibrary.ViewModels.PopupViewModel;
using LocalLibrary.Views.ContentView;
using LocalLibrary.Views.PopupPages;
using Microsoft.Extensions.Logging;

namespace LocalLibrary
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                    fonts.AddFont("rus.ttf", "rus");
                    fonts.AddFont("de.ttf", "de");
                    fonts.AddFont("davyrib.ttf", "davy");
                });
            //bekommen alle Disk im Pc
            LocalDiskPC.diskBuchstabe();
            //create Ordner für Images
            PathImages.GetPathImages();

            //Create DB
            builder.Services.AddDbContext<LibraryDBContext>();
            PathDb.isDbExist();

            //Transient кажлый раз будет генерироваться заново контект


            //Singleton один раз генерится и действует во время всей жизни приложения

            builder.Services.AddTransient<PopupMeldung>();
            builder.Services.AddTransient<PopupMeldungViewModel>();

            builder.Services.AddSingleton<StartPage>();
            builder.Services.AddTransient<StartContentViewModel>();

            builder.Services.AddTransient<LibraryContent>();
            builder.Services.AddTransient<LibraryContentViewModel>();

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
