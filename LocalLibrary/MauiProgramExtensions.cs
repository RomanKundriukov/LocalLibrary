using LocalLibrary.View;
using LocalLibrary.View.ContentView;
using LocalLibrary.View.NavigationsPanelView;
using LocalLibrary.ViewModel;
using Microsoft.Extensions.Logging;

namespace LocalLibrary
{
    public static class MauiProgramExtensions
    {
        public static MauiAppBuilder UseSharedMauiApp(this MauiAppBuilder builder)
        {
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            //Transient кажлый раз будет генерироваться заново контект
            builder.Services.AddTransient<HauptSeiteView>();
            builder.Services.AddTransient<HauptSeiteViewModel>();

            builder.Services.AddTransient<ErstellenLibraryView>();
            builder.Services.AddTransient<ErstellenLibraryViewModel>();

            builder.Services.AddTransient<AufmachenLibraryView>();
            builder.Services.AddTransient<AufmachenLibraryViewModel>();

            //Singleton один раз генерится и действует во время всей жизни приложения

            builder.Services.AddSingleton<NavigationsPanelView>();
            builder.Services.AddSingleton<NavigationsPanelViewModel>();

            builder.Services.AddSingleton<StartContentView>();
            builder.Services.AddSingleton<StartContentViewModel>();
#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder;
        }
    }
}
