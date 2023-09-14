import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/literary_database.dart';
import 'package:novellus1/resources/models/literary_model.dart';
import 'package:novellus1/screens/create/controllers/create_controller.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AddController extends GetxController {
  AppController app = Get.find<AppController>();
  CreateController create = Get.find<CreateController>();

  var selectedItem = 'Kategori'.obs;
  List<String> items = ['Kategori', 'Novel', 'Cerpen', 'Dongeng', 'Komik'];
  var selectedItem2 = 'Genre'.obs;
  List<String> items2 = ['Genre', 'Romansa', 'Horor', 'Humor'];

  late TextEditingController title;
  late TextEditingController synopsis;

  @override
  void onInit() {
    super.onInit();
    title = TextEditingController();
    synopsis = TextEditingController();
  }

  Future<void> add() async {
    try {
      print(app.user().id);
      String urlImage = await uploadImage();
      print(urlImage);
      var result = await LiteraryDatabase().insert(
          model: LiteraryModel(
              userId: app.user().id!,
              categoryId: selectedItem.value == 'Novel'
                  ? 1
                  : selectedItem.value == 'Cerpen'
                      ? 2
                      : selectedItem.value == 'Dongeng'
                          ? 3
                          : 4,
              title: title.text,
              synopsis: synopsis.text,
              genre: selectedItem2.value,
              coverUrl: urlImage,
              status: 'draft',
              publishedDate: null,
              createdAt: DateTime.now().toIso8601String()));

      Get.toNamed('/add3', arguments: result[0]);
      title.clear();
      synopsis.clear();
      image = null;
    } catch (e) {
      print(e);
    }
  }

  File? image;

  Future<void> selectImage() async {
    final ImagePicker picker = ImagePicker();

    XFile? result = await picker.pickImage(source: ImageSource.gallery);

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

      refresh();
      print(path);
      return path;
    } catch (e) {
      print(e.toString());

      return "";
    }
  }
}
