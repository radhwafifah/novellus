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
                            icon: Icon(Icons.arrow_back, size: 33,),
                            onPressed: () {
                              Get.offNamed('/bar');
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Masa Remaja",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
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
            SizedBox(height: 40,),
            ...List.generate(controller.chapters.length, (index) => Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Card(
                        child: Container(
                          width: 115,
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        controller.chapters[index][''],
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                  Text("Bab 1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
                  SizedBox(height: 30,),
                  ButtonTheme(
                    child: Container(
                      width: 110,
                      height: 40,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Text("Edit", style: TextStyle(fontSize: 16),),
                        backgroundColor: Color(0xFFA9C6D1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ))
                    ],
                  ),
                ],
              ),
            ),),
        Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.all(20),
        child: ButtonTheme(
          child: Container(
            child: FloatingActionButton(
              backgroundColor: Color(0xFFA9C6D1),
              onPressed: () {
                Get.offNamed('/add3');
              },
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Get.offNamed('/add3');
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
