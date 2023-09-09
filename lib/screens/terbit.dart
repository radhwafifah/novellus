import 'package:flutter/material.dart';
import 'package:novellus1/screens/create/create.dart';

class Terbit extends StatefulWidget {
  @override
  State<Terbit> createState() => _TerbitState();
}

class _TerbitState extends State<Terbit> {
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
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Create()));
                      },
                    ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Diterbitkan",
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                          "Masa Remaja",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5,),
                    Text("By Radhwa Afifah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
                    SizedBox(height: 5,),
                    Text("24 Bab", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        ButtonTheme(
                          child: Container(
                            width: 40,
                            height: 40,
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.delete),
                              backgroundColor: Color(0xFFA9C6D1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          )),
                          SizedBox(width: 15,),
                      ButtonTheme(
                      child: Container(
                        width: 40,
                        height: 40,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.edit),
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
                    SizedBox(width: 30,),
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
                          "Seen",
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
