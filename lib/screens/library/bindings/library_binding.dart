import 'package:get/get.dart';
import 'package:novellus1/screens/library/controllers/library_controller.dart';

class LibraryBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LibraryController());
  }
  
}