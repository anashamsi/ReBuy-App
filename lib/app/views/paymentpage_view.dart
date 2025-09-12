import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/payment_controller.dart';
import 'package:rebuyapp/app/controllers/purchase_controller.dart';
import 'package:rebuyapp/app/utils/colors.dart';
import 'package:rebuyapp/app/views/signup_view.dart';
import 'package:rebuyapp/app/views/step_progess.dart';

class PaymentpageView extends GetView<PaymentController> {
  const PaymentpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed('/orderconfirmation');
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        backgroundColor: AppColors.pink,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Pay now', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
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

                SizedBox(height: 30),
                invoiceDetails(),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      paymentCards(),
                      SizedBox(width: 10),
                      secondPaymentCards(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Enter CVV:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    inputTextField("CVV"),
                  ],
                ),
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

Widget invoiceDetails() {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 246, 251, 252),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shure podcast microphone',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          Text(
            'Make: Shure | Year: 2020',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Payment details',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              SizedBox(width: 15),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product cost:',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'PKR 24,999',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping fee:',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'PKR 150',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'PKR 25,149',
                            maxLines: 4,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Spacer(),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget paymentCards() {
  return Stack(
    children: [
      Container(
        width: 270,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff98aefe), Color(0xff3b5ede)],
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Positioned(
                right: -60,
                bottom: -20,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [Color(0xff98aefe), Color(0xff3b5ede)],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [Color(0xff98aefe), Color(0xff3b5ede)],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Credit Card',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    cardChip(),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'ALICE EVE',
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 40),
                        Text(
                          '12/25',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'XXXX XXXX XXXX 1234',
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget secondPaymentCards() {
  return Stack(
    children: [
      Container(
        width: 270,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xfffe9898), Color(0xfff29f75)],
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Positioned(
                right: -60,
                bottom: -20,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xfffe9898),
                        Color.fromARGB(255, 252, 180, 144),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xfffe9898),
                        Color.fromARGB(255, 252, 180, 144),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Credit Card',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    cardChip(),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'ALICE EVE',
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 40),
                        Text(
                          '12/25',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'XXXX XXXX XXXX 6543',
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget cardChip() {
  return Container(
    width: 50,
    height: 30,
    decoration: BoxDecoration(
      color: Color(0xffFFF9E3),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Stack(
      children: [
        Positioned(
          left: 12,
          top: 0,
          bottom: 0,
          child: Container(width: 2, color: Color(0xffFFE483)),
        ),

        // Vertical Line - Right
        Positioned(
          right: 12,
          top: 0,
          bottom: 0,
          child: Container(width: 2, color: Color(0xffFFE483)),
        ),

        Positioned(
          right: 0,
          left: 37,
          bottom: 7,
          child: Container(height: 1.5, color: Color(0xffFFE483)),
        ),
        Positioned(
          right: 0,
          left: 37,
          top: 7,
          child: Container(height: 1.5, color: Color(0xffFFE483)),
        ),
        Positioned(
          left: 0,
          right: 37,
          bottom: 7,
          child: Container(height: 1.5, color: Color(0xffFFE483)),
        ),
        Positioned(
          left: 0,
          right: 37,
          top: 7,
          child: Container(height: 1.5, color: Color(0xffFFE483)),
        ),
      ],
    ),
  );
}

Widget inputTextField(String name, [bool? obsecure]) {
  return Container(
    width: 100,
    height: 40,

    child: TextField(
      obscureText: obsecure ?? false,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.grey,
        hintText: name,
        hintStyle: TextStyle(color: AppColors.DarkGrey, letterSpacing: 5),

        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
