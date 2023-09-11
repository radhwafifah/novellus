import 'package:get/get.dart';
import 'package:novellus1/screens/profil/controllers/profil_controller.dart';

class ProfilBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfilController());
  }
  
}