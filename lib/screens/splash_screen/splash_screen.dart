
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/splash_screen/controllers/splash_controllers.dart';

class SplashScreen extends GetView<SplashController> {

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 5), () { 
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => intro()));
  //   });
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFA9C6D1),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 378, height: 378,),
          ],
        ),
      ),
      );
  }
}

