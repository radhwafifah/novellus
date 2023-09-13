import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
      //     literaryWorkId: ,
      //     title: title.text,
      //     content: content.text,
      //     status: 'draft',
      //     publishedDate: null,
      //     createdAt: DateTime.now().toIso8601String()
      // ));
      Get.toNamed('/chapters');
    } catch (e) {
      print(e);
    }
  }
}
