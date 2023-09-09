import 'package:flutter/material.dart';
import 'package:novellus1/screens/intro/intro2.dart';

import '../login/login.dart';

class intro extends StatefulWidget {
  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA9C6D1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFA9C6D1),
        elevation: 0,
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login()));
          }, child: Text("Skip", style: TextStyle(fontSize: 18),)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  "assets/intro1.png",
                  width: 410,
                  height: 410,
                ),
                Text(
                  "Selamat Datang di Novellus!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 27,),
                Text(
                  "Novellus akan menemani Anda saat ingin membaca atau berkarya",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.all(20),
        child: ButtonTheme(
          child: Container(
            width: 100,
            height: 50,
            child: FloatingActionButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => intro2()),
              );
            }, child: Text("Lanjut", style: TextStyle(fontSize: 15),),shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),),),
          ),
        ),
      ),
    );
  }
}
