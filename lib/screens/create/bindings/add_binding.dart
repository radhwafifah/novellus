import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/add_controller.dart';

class AddBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AddController());
  }
}