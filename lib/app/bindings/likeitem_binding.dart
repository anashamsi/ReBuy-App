import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:rebuyapp/app/controllers/likeitem_controller.dart';

class LikeitemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LikeitemController>(() => LikeitemController());
  }
}
