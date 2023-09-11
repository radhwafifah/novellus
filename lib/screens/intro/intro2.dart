import 'package:flutter/material.dart';
import 'package:novellus1/screens/intro/intro.dart';
import 'package:novellus1/screens/intro/intro3.dart';

import '../auth/login.dart';

class intro2 extends StatefulWidget {
  @override
  State<intro2> createState() => _introState2();
}

class _introState2 extends State<intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA9C6D1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30,),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => intro())); 
          },
        ),
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
                  "assets/intro2.png",
                  width: 410,
                  height: 410,
                ),
                Text(
                  "Ide Tanpa Batas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 27,),
                Text(
                  "Dengan aplikasi ini, Anda dapat membagikan karya Anda dalam bentuk tertulis",
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
                MaterialPageRoute(builder: (context) => intro3()),
              );
            }, child: Text("Lanjut", style: TextStyle(fontSize: 15),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
                  ),
          ),
      ),
      ),
    );
  }
}
