import 'package:get/get.dart';
import 'package:novellus1/screens/history/controllers/history_controller.dart';

class HistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HistoryController());
  }
  
}