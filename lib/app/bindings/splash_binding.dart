import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
