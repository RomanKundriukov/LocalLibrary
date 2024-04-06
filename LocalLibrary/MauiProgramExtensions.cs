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

            //Singleton один раз генерится и действует во время всей жизни приложения
            builder.Services.AddSingleton<NavigationsPanelView>();
            builder.Services.AddSingleton<NavigationsPanelViewModel>();

            builder.Services.AddSingleton<StartContentView>();
            builder.Services.AddSingleton<StartContentViewModel>();

            builder.Services.AddSingleton<NewPage1>();
            builder.Services.AddSingleton<NewPage2>();
#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder;
        }
    }
}
