

import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/screens/create/create.dart';
import 'package:novellus1/screens/history/history.dart';
import 'package:novellus1/screens/home/home.dart';
import 'package:novellus1/screens/library/library.dart';

class BarController extends GetxController {
  AppController app = Get.find<AppController>();

  RxInt currentIndex = 0.obs;

  final tabs = [
    Home(),
    Library(),
    Create(),
    History()
  ];
}
