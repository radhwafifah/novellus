import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/bar.dart';

class Notif extends StatefulWidget {
  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
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
                            icon: Icon(Icons.arrow_back, size: 33,), onPressed: () { 
                              Get.offNamed('/bar');
                            },
                          )),
                          SizedBox(width: 10,),
                      Text(
                        "Notifikasi",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Hari Ini",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset("assets/notif.png", height: 50, width: 50,)
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "Komentarmu dibalas oleh penulis!",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                  Text("Ayo lihat dan balas kembali komentarnya!", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),),
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
