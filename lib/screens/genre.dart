import 'package:flutter/material.dart';

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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: Icon(
                            Icons.arrow_back,
                            size: 36,
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
                  Card(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Text(
                            "Romance",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Text(
                            "Horror",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Card(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Text(
                            "Humor",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Text(
                            "Adventure",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
