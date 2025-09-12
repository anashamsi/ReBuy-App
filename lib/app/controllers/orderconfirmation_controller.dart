import 'package:get/get.dart';

class OrderconfirmationController extends GetxController {
  var currentStep = 2.obs;

  void nextStep() {
    if (currentStep < 3) currentStep++;
  }

  void previousStep() {
    if (currentStep > 0) currentStep--;
  }
}
