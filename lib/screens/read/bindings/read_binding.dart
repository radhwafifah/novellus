import 'package:get/get.dart';
import 'package:novellus1/screens/read/controllers/read_controller.dart';

class ReadBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ReadController());
  }
  
}