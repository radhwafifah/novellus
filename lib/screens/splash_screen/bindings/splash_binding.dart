import 'package:get/get.dart';
import 'package:novellus1/screens/splash_screen/controllers/splash_controllers.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
  
}