import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:novellus1/common/controllers/bar_controller.dart';
import 'package:novellus1/screens/create/create.dart';
import 'package:novellus1/screens/history/history.dart';
import 'package:novellus1/screens/home/home.dart';
import 'package:novellus1/screens/library/library.dart';

class Bar extends GetView<BarController> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.tabs[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon:  Icon(Icons.home),
                  label: 'Beranda',
                  backgroundColor: Color(0xFFA9C6D1),
                  ),
                  BottomNavigationBarItem(
                  icon:  Icon(Icons.collections_bookmark),
                  label: 'Perpustakaan',
                  backgroundColor: Color(0xFFA9C6D1),
                  ),
                  BottomNavigationBarItem(
                  icon:  Icon(Icons.edit_document),
                  label: 'Tulis',
                  backgroundColor: Color(0xFFA9C6D1),
                  ),
                  BottomNavigationBarItem(
                  icon:  Icon(Icons.history),
                  label: 'Riwayat',
                  backgroundColor: Color(0xFFA9C6D1),
                  ),
              ],
              onTap: (index) {
                // setState(() {
                //   _currentIndex = index;
                // });
                controller.currentIndex.value = index;
              },
              );
        }
      ),
    );
  }
}