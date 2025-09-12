import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/myaccount_controller.dart';

class MyaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyaccountController>(() => MyaccountController());
  }
}
