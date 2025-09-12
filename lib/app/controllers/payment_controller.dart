import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  var currentStep = 1.obs;

  void nextStep() {
    if (currentStep < 3) currentStep++;
  }

  void previousStep() {
    if (currentStep > 0) currentStep--;
  }
}
