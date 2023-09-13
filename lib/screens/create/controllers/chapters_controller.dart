import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/chapters_database.dart';
import 'package:novellus1/resources/models/literary_model.dart';

class ChaptersController extends GetxController {
  AppController app = Get.find<AppController>();

  var literaryWork;

  @override
  void onInit() {
    super.onInit();

    getChapters();
  }

  List<Map<String, dynamic>> chapters = [];

  void getChapters() async {
    List<Map<String, dynamic>> result = await ChaptersDatabase().select();
    if (result.isNotEmpty) {
      chapters.addAll(result);

      refresh();
    } else {
      print("Tidak ada");
    }
  }
}