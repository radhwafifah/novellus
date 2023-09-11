import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}