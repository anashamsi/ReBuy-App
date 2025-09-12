import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/orderconfirmation_controller.dart';
import 'package:rebuyapp/app/utils/colors.dart';
import 'package:rebuyapp/app/views/step_progess.dart';

class OrderconfirmationView extends GetView<OrderconfirmationController> {
  const OrderconfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/home');
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      backgroundColor: AppColors.pink,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      'Go to home',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    backbutton(),
                    Spacer(),
                    Text(
                      'ReBuy',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                StepProgressIndicator(
                  currentStep: controller.currentStep.value,
                  totalSteps: 3,
                ),
                SizedBox(height: 25),
                successfulMessage(),
                SizedBox(height: 40),
                productCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget backbutton() {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      fixedSize: const Size(46, 55),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: const BorderSide(width: 1),
      padding: EdgeInsets.zero,
    ),
    child: const Center(
      child: Icon(Icons.arrow_back_ios_new_outlined, size: 20),
    ),
  );
}

Widget successfulMessage() {
  return Container(
    width: double.infinity,
    height: 280,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 246, 251, 252),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff09a02a),
            child: Icon(Icons.check_rounded, color: Colors.white, size: 45),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            maxLines: 3,

            'Your payment for \nPKR 25,149\n is succesfull',
            style: TextStyle(
              fontSize: 35,
              color: AppColors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget productCard() {
  return Container(
    width: double.infinity,
    height: 110,
    decoration: BoxDecoration(
      color: Color(0xffbadabb),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.asset(
                'assets/images/miqimage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Shure podcast micro-\nphone',

                maxLines: 2,
                style: TextStyle(
                  height: 0,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Tracking ID: 989896654',

                style: TextStyle(
                  height: 0,
                  fontSize: 11,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Order ID: 9856548  41656589',

                style: TextStyle(
                  height: 0,
                  fontSize: 11,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
