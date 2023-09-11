import 'package:flutter/material.dart';

import 'home/home.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, size: 36,),
                            onPressed: () { Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home()));},
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pencarian",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
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
          ]
        ),
      ),
    );
  }
}
