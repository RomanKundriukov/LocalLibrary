using LocalLibrary.View;
using LocalLibrary.View.ContentView;
using LocalLibrary.View.NavPanelView;
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
            builder.Services.AddTransient<HauptSeiteView>();
            builder.Services.AddTransient<HauptSeiteViewModel>();

            builder.Services.AddSingleton<NavPanelView>();
            builder.Services.AddSingleton<NavPanelViewModel>();

            builder.Services.AddSingleton<StartContentView>();
            builder.Services.AddSingleton<StartContentViewmModel>();
#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder;
        }
    }
}
