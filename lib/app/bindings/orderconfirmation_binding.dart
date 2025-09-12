import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/orderconfirmation_controller.dart';

class OrderconfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderconfirmationController>(
      () => OrderconfirmationController(),
    );
  }
}
