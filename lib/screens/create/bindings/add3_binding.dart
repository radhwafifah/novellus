import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/add3_controller.dart';

class Add3Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(Add3Controller());
  }
}