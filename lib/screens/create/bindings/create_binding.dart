import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/create_controller.dart';

class CreateBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreateController());
  }
}