import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/literary_database.dart';

class CreateController extends GetxController {
  AppController app = Get.find<AppController>();
  

  @override
  void onInit() {
    super.onInit();

    getLiteraryWork();
  }

  List<Map<String, dynamic>> literaryWork = [];

  void getLiteraryWork() async {
    List<Map<String, dynamic>> result = await LiteraryDatabase().select(id: app.user().id!);
    if (result.isNotEmpty) {
      literaryWork.addAll(result);

      refresh();
    } else {
      print("Tidak ada");
    }
  }

  // Future<void> () async {
  //   bool result = await LiteraryDatabase().

  //   if (result) {
  //     literaryWork = [];
  //     getLiteraryWork();
  //   } else {
  //     print("Hapus data user gagal");
  //   }
  // }
}
