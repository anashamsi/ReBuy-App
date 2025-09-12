import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rebuyapp/app/bindings/login_binding.dart';
import 'package:rebuyapp/app/bindings/splash_binding.dart';
import 'package:rebuyapp/app/views/custom_bottom_navigationbar.dart';
import 'package:rebuyapp/app/views/login_view.dart';
import 'package:rebuyapp/app/views/myaccount_view.dart';
import 'package:rebuyapp/app/views/mylisting_view.dart';
import 'package:rebuyapp/app/views/myorders_view.dart';
import 'package:rebuyapp/app/views/productdeatil_view.dart';
import 'package:rebuyapp/app/views/sidebar_view.dart';
import 'package:rebuyapp/app/views/signup_view.dart';
import 'package:rebuyapp/app/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.productview;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(name: Routes.signup, page: () => SignupView()),
    GetPage(name: Routes.home, page: () => CustomBottomNavView()),
    GetPage(name: Routes.mylisting, page: () => MylistingView()),
    GetPage(name: Routes.myorders, page: () => MyordersView()),
    GetPage(name: Routes.sidebar, page: () => SidebarView()),
    GetPage(name: Routes.myaccount, page: () => MyaccountView()),
    GetPage(name: Routes.productview, page: () => ProductdeatilView()),
  ];
}
