import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/sidebar_controller.dart';

class SidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SidebarController>(() => SidebarController());
  }
}
