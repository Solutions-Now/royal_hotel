import '../helpers/all_imports.dart';

class Routes {
  static const String unDefinedRoute = '/NotFoundView';
  static const String splashRoute = '/SplashView';
  static const String registerRoute = '/RegisterView';
  static const String logInRoute = '/LogInView';
  static const String navigationRoute = '/NavigationView';
  static const String homeRoute = '/HomeView';
  static const String connectionErrorRoute = '/ConnectionErrorView';
  static const String settingsRoute = '/SettingsView';
}

class RouteGenerator {
  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: Routes.splashRoute,
        page: () => SplashView(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: Routes.registerRoute,
        page: () => const RegisterView(),
        binding: RegisterBinding(),
      ),
      GetPage(
        name: Routes.logInRoute,
        page: () => const LogInView(),
        binding: LogInBinding(),
      ),
      GetPage(
        name: Routes.navigationRoute,
        page: () => const NavigationView(),
        binding: NavigationBinding(),
      ),
      GetPage(
        name: Routes.homeRoute,
        page: () => HomeView(),
      ),
      GetPage(
        name: Routes.connectionErrorRoute,
        page: () => ConnectionErrorView(),
        binding: ConnectionErrorBinding(),
      ),
      GetPage(
        name: Routes.settingsRoute,
        page: () => SettingsView(),
        binding: SettingsBinding(),
      ),
    ];
  }

  static Scaffold unDefinedRoute() {
    return Scaffold(
      appBar: AppBar(
        title: ScaleText(
          localizations.noRouteFound,
          overflow: TextOverflow.visible,
        ),
      ),
      body: Center(
        child: ScaleText(
          localizations.noRouteFound,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
