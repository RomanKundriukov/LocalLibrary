using LocalLibrary.Data;
using LocalLibrary.ViewModel;
using LocalLibrary.Views.ContentView;
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
                });

            //bekommen alle Disk im Pc
            LocalDiskPC.diskBuchstabe();

            //Create DB
            builder.Services.AddDbContext<LibraryDBContext>();

            var dbContext = new LibraryDBContext();

            dbContext.Database.EnsureCreated();
            dbContext.Dispose();

            //Transient кажлый раз будет генерироваться заново контект

            builder.Services.AddTransient<ErstellenLibraryPage>();
            builder.Services.AddTransient<ErstellenLibraryViewModel>();

            builder.Services.AddTransient<AufmachenLibraryPage>();
            builder.Services.AddTransient<AufmachenLibraryViewModel>();

            //Singleton один раз генерится и действует во время всей жизни приложения


            builder.Services.AddSingleton<StartPage>();
            builder.Services.AddSingleton<StartContentViewModel>();
#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
