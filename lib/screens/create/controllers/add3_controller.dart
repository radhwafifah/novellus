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

  File? image;

  Future<void> selectImage() async {
    final ImagePicker picker = ImagePicker();

    XFile? result = await picker.pickImage(source: ImageSource.camera);

    if (result != null) {
      image = File(result.path);
      refresh();
    } else {
      print("Gagal ambil gambar");
    }
  }

  Future<String> uploadImage() async {
    try {
      DateTime date = DateTime.now();
      String path =
          await Supabase.instance.client.storage.from('covers').upload(
                'cover_${date.day}${date.month}${date.year}${date.hour}${date.minute}${date.second}${date.microsecond}.png',
                image!,
                fileOptions: const FileOptions(
                  cacheControl: '3600',
                  upsert: false,
                ),
              );

      image = null;
      refresh();

      // TODO: Baca => Path ini adalah URL yang nanti disimpan di database
      // contoh hasil path nya itu seperti ini "covers/cover_1192023162353538.png"
      // Untuk menampilkan gambar dari URL pake widget Image.network() atau NetworkImage()
      // Ingat tambahkan Base Url supabase nya contoh https://xhvtqlnylrdnwsgmawel.supabase.co/storage/v1/object/public/covers/cover_1192023162353538.png
      print(path);
      return path;
    } catch (e) {
      print(e.toString());

      return "";
    }
  }
}
