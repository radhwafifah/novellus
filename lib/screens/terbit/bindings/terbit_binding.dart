import 'package:get/get.dart';
import 'package:novellus1/screens/terbit/controllers/terbit_controller.dart';

class TerbitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TerbitController());
  }
  
}