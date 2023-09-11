import 'package:get/get.dart';
import 'package:novellus1/screens/auth/controllers/auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}