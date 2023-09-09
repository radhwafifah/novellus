import 'package:flutter/material.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
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
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back),
                            iconSize: 32,
                            ),
                  ),
                  Text(
                    "Masa Remaja",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(isDark? Icons.nights_stay_outlined : Icons.wb_sunny_outlined),
                            ),
                          ),
                          Container(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.list),
                            iconSize: 32,
                            ),),
                    ],
                  ),
                ],
            ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "BAB 1",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 7,),
                    Text(
                      "Pendahuluan",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10),
                child: Text(
                  "Yesterday ajksbuabxksaiueHDewiugdceUWGFCARVFUYVYHUGFUJGJGYUFTRDRT",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
            ),
                ],
              ),
              ),
        );
  }
}