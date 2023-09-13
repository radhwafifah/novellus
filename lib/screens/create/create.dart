import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/create_controller.dart';

class Create extends GetView<CreateController> {
  final CreateController createController = Get.put(CreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Karya', style: TextStyle(fontSize: 26),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search), iconSize: 33,)
        ],
        backgroundColor: Color(0xFFA9C6D1),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                  child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 200,
                height: 80,
                child: FloatingActionButton(
                  onPressed: () {
                    Get.toNamed('/terbit');
                  },
                  child: Text(
                    "Diterbitkan",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  backgroundColor: Color(0xFFA9C6D1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Draft",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ...List.generate(
              controller.literaryWork.length,
              (index) => Padding(
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
                                child: Image.network(
                                  "https://xhvtqlnylrdnwsgmawel.supabase.co/storage/v1/object/public/${controller.literaryWork[index]['coverUrl']}",
                                  fit: BoxFit.cover,
                                ),
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
                          controller.literaryWork[index]['title'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Bab 1",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonTheme(
                            child: Container(
                          width: 140,
                          height: 40,
                          child: FloatingActionButton(
                            onPressed: () {
                              Get.toNamed('/chapters');
                            },
                            child: Text(
                              "Lanjutkan",
                              style: TextStyle(fontSize: 15),
                            ),
                            backgroundColor: Color(0xFFA9C6D1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.all(20),
        child: ButtonTheme(
          child: Container(
            child: FloatingActionButton(
              backgroundColor: Color(0xFFA9C6D1),
              onPressed: () {
                Get.toNamed('/add');
              },
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Get.toNamed('/add');
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
