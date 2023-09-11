import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/literary_database.dart';
import 'package:novellus1/resources/models/literary_model.dart';

class AddController extends GetxController {
  AppController app = Get.find<AppController>();
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
      await LiteraryDatabase().insert(
          model: LiteraryModel(
              userId: app.user().id!,
              categoryId: selectedItem.value == 'Novel'? 1 : selectedItem.value == 'Cerpen'? 2 : selectedItem.value == 'Dongeng'? 3 : 4,
              title: title.text,
              synopsis: synopsis.text,
              genre: selectedItem2.value,
              coverUrl: '',
              status: 'draft',
              publishedDate: null,
              createdAt: DateTime.now().toIso8601String()));
              Get.toNamed('/add3');
    } catch (e) {
      print(e);
    }
  }
}
