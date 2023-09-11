import 'package:get/get.dart';
import 'package:novellus1/screens/book/controllers/book_controller.dart';

class BookBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BookController());
  }
  
}