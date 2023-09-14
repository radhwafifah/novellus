import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/chapters_database.dart';
import 'package:novellus1/resources/models/chapters_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Add3Controller extends GetxController {
  AppController app = Get.find<AppController>();
  Map<String, dynamic> literaryWork = Get.arguments;

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
      await ChaptersDatabase().insert(
          model: ChaptersModel(
              literaryWorkId: literaryWork['id'],
              title: title.text,
              content: content.text,
              status: 'draft',
              publishedDate: null,
              createdAt: DateTime.now().toIso8601String()));
      Get.toNamed('/chapters', arguments: literaryWork);
    } catch (e) {
      print(e);
    }
  }
}
