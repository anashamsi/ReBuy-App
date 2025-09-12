import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/firebase_controller.dart';
import 'package:rebuyapp/app/controllers/signup_controller.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class SignupView extends GetView<SignupController> {
  SignupView({super.key});
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontFamily: 'Dosis',
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'Login with one of the following options',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828282),
                  ),
                ),
                SizedBox(height: 15),
                socialMediaIcon(),
                SizedBox(height: 20),
                orLine(),
                SizedBox(height: 20),
                inputTextField("Name"),
                SizedBox(height: 15),
                inputTextField("Email", false, _emailcontroller),
                SizedBox(height: 15),
                inputTextField("Password", true, _passcontroller),
                SizedBox(height: 15),
                signupButton(() async {
                  bool success = await authController.register(
                    _emailcontroller.text.trim(),
                    _passcontroller.text.trim(),
                  );
                  if (success) {
                    Get.offNamed('/login');
                  }
                }),
                SizedBox(height: 20),
                loginline(),
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
    onPressed: () {
      Get.back();
    },
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

Widget socialMediaIcon() {
  return Row(
    children: [
      Expanded(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 105,
            height: 57,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(child: Image.asset('assets/images/Google.png')),
          ),
        ),
      ),
      SizedBox(width: 5),
      Expanded(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 105,
            height: 57,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(child: Image.asset('assets/images/Twitter.png')),
          ),
        ),
      ),
      SizedBox(width: 5),
      Expanded(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 105,
            height: 57,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(child: Image.asset('assets/images/Apple.png')),
          ),
        ),
      ),
    ],
  );
}

Widget orLine() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Divider(
          color: AppColors.DarkGrey,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
      ),
      Text('OR', style: TextStyle(color: AppColors.DarkGrey)),
      Expanded(
        child: Divider(
          color: AppColors.DarkGrey,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
      ),
    ],
  );
}

Widget inputTextField(
  String name, [
  bool? obsecure,
  TextEditingController? controller,
]) {
  return TextField(
    controller: controller,
    obscureText: obsecure ?? false,
    decoration: InputDecoration(
      filled: true,
      fillColor: AppColors.grey,
      hintText: name,
      hintStyle: TextStyle(color: AppColors.DarkGrey),

      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget signupButton(VoidCallback ontap) {
  return Container(
    width: 344,
    height: 56,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [Color(0xffff5961), Color(0xfff9589d)],
      ),
      borderRadius: BorderRadius.circular(22),
    ),

    child: ElevatedButton(
      onPressed: ontap,

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        'Create account',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget loginline() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have an account?',
        style: TextStyle(
          color: AppColors.DarkGrey,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(width: 5),
      InkWell(
        onTap: () {
          Get.toNamed('/login');
        },
        child: Text(
          'Log in',
          style: TextStyle(
            color: AppColors.pink,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  );
}
