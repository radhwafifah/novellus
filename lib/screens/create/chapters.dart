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
                              Get.toNamed('/bar');
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Masa Remaja",
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
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        children: [
                          Text(
                            "Bab 1",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pendahuluan",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.all(20),
              child: ButtonTheme(
                child: Container(
                  child: FloatingActionButton(
                    backgroundColor: Color(0xFFA9C6D1),
                    onPressed: () {
                      Get.toNamed('/add3');
                    },
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        Get.toNamed('/add3');
                      },
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
