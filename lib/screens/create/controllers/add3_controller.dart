import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/chapters_model.dart';
import 'package:novellus1/resources/models/chapters_model.dart';

class Add3Controller extends GetxController {
  AppController app = Get.find<AppController>();

  late TextEditingController title;
  late TextEditingController content;

  @override
  void onInit() {
    super.onInit();
    title = TextEditingController();
    content = TextEditingController();
  }

  Future<void> add3() async {
    try {
      print(app.user().id);
      // await ChaptersDatabase().insert(
      //     model: ChaptersModel(
      //         literaryWorkId: ,
      //         title: title.text,
      //         content: content.text,
      //         status: 'draft',
      //         publishedDate: null));
    } catch (e) {
      print(e);
    }
  }
}
