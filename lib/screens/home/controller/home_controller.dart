
import 'package:get/get.dart';
import 'package:novellus1/common/controllers/app_controller.dart';
import 'package:novellus1/resources/databases/user_database.dart';

class HomeController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    getUsers();
  }

  List<Map<String, dynamic>> users = [];

  void getUsers() async {
    List<Map<String, dynamic>> result = await UserDatabase().selectAll();
    if (result.isNotEmpty) {
      users.addAll(result);

      refresh();
    } else {
      print("Tidak ada users");
    }
  }

  Future<void> delete(String email) async {
    bool result = await UserDatabase().delete(email: email);

    if (result) {
      users = [];
      getUsers();
    } else {
      print("Hapus data user gagal");
    }
  }
}