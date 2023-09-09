import 'package:flutter/material.dart';
import 'package:novellus1/screens/intro/intro2.dart';
import 'package:novellus1/screens/login/login.dart';

class intro3 extends StatefulWidget {
  @override
  State<intro3> createState() => _introState3();
}

class _introState3 extends State<intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA9C6D1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30,),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => intro2()));
          },
        ),
        backgroundColor: Color(0xFFA9C6D1),
        elevation: 0,
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
                  "Ayo Baca Sekarang!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  "Baca dimana saja. Membaca menjadi mudah dan menyenangkan!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ButtonTheme(
                    child: Container(
                      width: 180,
                      height: 50,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text("Ayo Mulai", style: TextStyle(fontSize: 16),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
