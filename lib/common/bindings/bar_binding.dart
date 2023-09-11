import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/common/controllers/bar_controller.dart';
import 'package:novellus1/screens/create/controllers/create_controller.dart';
import 'package:novellus1/screens/home/controller/home_controller.dart';

class BarBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BarController());
    Get.put(HomeController());
    Get.put(CreateController());
  }
}