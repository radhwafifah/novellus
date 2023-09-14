import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/resources/models/literary_model.dart';
import 'package:novellus1/screens/create/controllers/chapters_controller.dart';

class Chapters extends GetView<ChaptersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 33,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        controller.literalyWork['title'],
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.search_sharp,
                        size: 33,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GetBuilder<ChaptersController>(builder: (_) {
              return Column(
                children: [
                  ...List.generate(
                    controller.chapters.length,
                    (i) => InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 110,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bab ${i + 1}",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.chapters[i]['title'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFA9C6D1),
        onPressed: () {
          Get.toNamed('/add3', arguments: controller.literalyWork);
        },
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
