import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
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
                    ],
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Icon(Icons.bookmark_add_outlined, size: 33,),
                        onPressed: () {},
                      ),
                      ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    width: 220,
                    height: 240,
                    child: Card(
                      child: Image.asset(
                        "assets/remaja2.jpg",
                        height: 200,
                        width: 180,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Masa Remaja",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "By Radhwa Afifah",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                    width: 250,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Dibaca",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Vote",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.list,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Bab",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ButtonTheme(
                      child: Container(
                    width: 140,
                    height: 40,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Text(
                        "Baca",
                        style: TextStyle(fontSize: 15),
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
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      "Deskripsi",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "ini deskripsinya",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
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
