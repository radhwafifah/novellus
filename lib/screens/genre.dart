import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Genre extends StatefulWidget {
  @override
  State<Genre> createState() => _GenreState();
}

class _GenreState extends State<Genre> {
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
                        "Search",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
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
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Genre",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
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
                    width: 160,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text(
                        "Romansa",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      backgroundColor: Color(0xFFA9C6D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  ButtonTheme(
                      child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 160,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text(
                        "Horor",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      backgroundColor: Color(0xFFA9C6D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
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
                            width: 160,
                            height: 50,
                            child: FloatingActionButton(
                              onPressed: () {
                              },
                              child: Text(
                                "Hayalan",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              backgroundColor: Color(0xFFA9C6D1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          )),
                  SizedBox(
                    width: 20,
                  ),
                  ButtonTheme(
                              child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 160,
                            height: 50,
                            child: FloatingActionButton(
                              onPressed: () {
                              },
                              child: Text(
                                "Humor",
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
            ),
          ],
        ),
      ),
    );
  }
}
