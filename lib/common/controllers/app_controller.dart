import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:novellus1/resources/models/user_model.dart';

class AppController extends GetxController {
  GetStorage box = GetStorage();
  RxBool isAuthenticated = false.obs;

  @override
  void onInit() {
    super.onInit();

    authCheck();
  }

  void authCheck() {
    if (box.read("user") != null) {
      isAuthenticated.value = true;
    } else {
      isAuthenticated.value = false;
    }
  }

  UserModel user() {
    return UserModel.fromMap(box.read("user") as Map<String, dynamic>);
  }
}