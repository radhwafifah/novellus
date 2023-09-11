import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/literary_database.dart';
import 'package:novellus1/resources/models/literary_model.dart';

class CreateController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    getLiteraryWork();
  }

  List<Map<String, dynamic>> literaryWork = [];

  void getLiteraryWork() async {
    List<Map<String, dynamic>> result = await LiteraryDatabase().select();
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
