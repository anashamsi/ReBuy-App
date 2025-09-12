import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rebuyapp/app/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffff5961), Color(0xfff9589d)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Text(
                "ReBuy",
                style: TextStyle(
                  fontFamily: 'Dosis',
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff3C3C3C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
