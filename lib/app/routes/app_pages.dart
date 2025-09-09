import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rebuyapp/app/bindings/splash_binding.dart';
import 'package:rebuyapp/app/views/home_view.dart';
import 'package:rebuyapp/app/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(name: Routes.home, page: () => HomeView()),
  ];
}
