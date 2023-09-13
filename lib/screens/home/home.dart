import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/auth/controllers/auth_controller.dart';
import 'package:novellus1/screens/home/controller/home_controller.dart';

class Home extends GetView<HomeController> {
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
                            InkWell(
                              onTap: () async {
                                final auth = Get.put(AuthController());
                                await auth.logout();
                              },
                              child: Container(
                                alignment: Alignment.topLeft,
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2),
                                  image: DecorationImage(
                                      image: AssetImage("assets/kucing.jpg")),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Halo ${controller.app.user().name}!",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                              icon: Icon(
                                Icons.notifications,
                                size: 40,
                              ),
                              onPressed: () {
                                Get.offNamed('/notif');
                              },
                            )),
                      ])),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F7),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    cursorHeight: 20,
                    autofocus: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_sharp),
                        hintText: "Search",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Kategori Buku",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ButtonTheme(
                              child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 140,
                            height: 50,
                            child: FloatingActionButton(
                              onPressed: () {
                                Get.offNamed('/genre');
                              },
                              child: Text(
                                "Novel",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              backgroundColor: Color(0xFFA9C6D1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            ButtonTheme(
                                child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 140,
                              height: 50,
                              child: FloatingActionButton(
                                onPressed: () {
                                  Get.offNamed('/genre');
                                },
                                child: Text(
                                  "Cerpen",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                backgroundColor: Color(0xFFA9C6D1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  ButtonTheme(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 140,
                                    height: 50,
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        Get.offNamed('/genre');
                                      },
                                      child: Text(
                                        "Dongeng",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      backgroundColor: Color(0xFFA9C6D1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  ButtonTheme(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 140,
                                    height: 50,
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        Get.offNamed('/genre');
                                      },
                                      child: Text(
                                        "Komik",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      backgroundColor: Color(0xFFA9C6D1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Terbaru",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed('/book');
                            },
                            child: Card(
                              child: Container(
                                width: 140,
                                height: 190,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                        image: AssetImage("assets/cover1.jpg")),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Card(
                                  child: Container(
                                    width: 140,
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                      image: AssetImage("assets/cover.jpg")),
                                            ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Card(
                                  child: Container(
                                    width: 140,
                                    height: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                      image: AssetImage("assets/remaja2.jpg")),
                                            ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Sedang Populer",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Card(
                            child: Container(
                              width: 140,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                      image: AssetImage("assets/cover2.jpg")),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  width: 140,
                                  height: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                      image: AssetImage("assets/cover3.jpg")),
                                      ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  width: 140,
                                  height: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                      image: AssetImage("assets/cover4.jpg"),),
                                      ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
        )
      )
          );
        }
  }
