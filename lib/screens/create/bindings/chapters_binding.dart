import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/chapters_controller.dart';

class ChaptersBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ChaptersController());
  }
}