import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/add3_controller.dart';

class AddStory3 extends GetView<Add3Controller> {
  final Add3Controller controller = Get.put(Add3Controller());

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Get.offNamed('/add');
                    },
                  ),
                  Text(
                    "Buat Cerita",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                            width: 450,
                            height: 175,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                          color: Colors.blue.shade300,
                          width: 1.0,
                        ),
                                ),
                                child: IconButton(
                                  icon: 
                                  Icon(Icons.add_a_photo_outlined, color: Colors.blue.shade300, size: 40,),
                                  onPressed: () {},
                                ),
                          ),
                    ],
                  ),
            ],
          ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Judul Bab :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                SizedBox(height: 20,),
                TextField(
                  controller: controller.title,
                  maxLines: 2,
                  decoration: InputDecoration(
                    hintText: "Masukkan Judul Bab",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xFFB4B4B4)),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  ),
                )
              ],
            ),
            ),
            SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.content,
                  maxLines: 8,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mulai ketik isi cerita..'
                  ),
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            ),
            SizedBox(height: 400,),
            ButtonTheme(child: Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.all(20),
        child: ButtonTheme(
          child: Container(
            width: 100,
            height: 50,
            child: FloatingActionButton(
              backgroundColor: Color(0xFFA9C6D1),
              onPressed: () {
                Get.offAllNamed('/create');
              },
              child: Text("Terbitkan", style: TextStyle(fontSize: 17),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
            ),
            ],
      ),
        ),
      ),
    );
  }
}