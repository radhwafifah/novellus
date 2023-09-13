import 'package:flutter/material.dart';
import 'package:novellus1/screens/bar.dart';

class Library extends StatefulWidget {
  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Perpustakaan",
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
            Padding(
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
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/remaja2.jpg")),
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
                        "Masa Remaja",
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                  Text("By Radhwa Afifah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
                  SizedBox(height: 30,),
                  ButtonTheme(
                    child: Container(
                      width: 110,
                      height: 40,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Text("Baca", style: TextStyle(fontSize: 16),),
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
            ),
          ],
        ),
      ),
    );
  }
}
