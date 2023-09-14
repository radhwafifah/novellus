import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/splash_screen/controllers/splash_controllers.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFA9C6D1),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 378,
              height: 378,
            ),
          ],
        ),
      ),
    );
  }
}
