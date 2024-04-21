using LocalLibrary.Data;
using LocalLibrary.ViewModel;
using LocalLibrary.Views.ContentView;
using LocalLibrary.Views.NavigationsPanelView;
using Microsoft.Extensions.Logging;

namespace LocalLibrary
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {

            //using (var db = new LibraryDBContext())
            //{
            //    // Создаем базу данных (если она не существует) и применяем все ожидающие миграции
            //    db.Database.EnsureCreated();
            //}

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

            //Transient кажлый раз будет генерироваться заново контект
            builder.Services.AddTransient<HauptSeitePage>();
            builder.Services.AddTransient<HauptSeiteViewModel>();

            builder.Services.AddTransient<ErstellenLibraryPage>();
            builder.Services.AddTransient<ErstellenLibraryViewModel>();

            builder.Services.AddTransient<AufmachenLibraryPage>();
            builder.Services.AddTransient<AufmachenLibraryViewModel>();

            //Singleton один раз генерится и действует во время всей жизни приложения

            builder.Services.AddSingleton<NavPage>();
            builder.Services.AddSingleton<NavigationsPanelViewModel>();

            builder.Services.AddSingleton<StartPage>();
            builder.Services.AddSingleton<StartContentViewModel>();
#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
