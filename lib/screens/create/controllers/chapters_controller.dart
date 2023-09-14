import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/chapters_database.dart';

class ChaptersController extends GetxController {
  AppController app = Get.find<AppController>();
  Map<String, dynamic> literalyWork = Get.arguments;

  @override
  void onInit() {
    super.onInit();
    print("init");
    getChapters();
  }

  List<Map<String, dynamic>> chapters = [];

  void getChapters() async {
    List<Map<String, dynamic>> result =
        await ChaptersDatabase().select(literalyWorkId: literalyWork['id']);
    if (result.isNotEmpty) {
      chapters.addAll(result);

      update();
    } else {
      print("Tidak ada");
    }
  }
}
