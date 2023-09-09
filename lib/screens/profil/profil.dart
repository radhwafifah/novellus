import 'package:flutter/material.dart';
import 'package:novellus1/screens/bar.dart';
import 'package:novellus1/screens/login/login.dart';
import 'package:novellus1/screens/profil/account.dart';
import 'package:novellus1/screens/profil/info.dart';
import 'package:novellus1/screens/profil/publish.dart';
import 'package:novellus1/screens/profil/settings.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
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
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, size: 36,),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Bar()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Profil",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage("assets/profil2.png")),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Radhwaa",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "@rdhwaaff",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),

                  //MENU
                  ListTile(
                    leading: Container(
                      width: 45,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.account_circle, color: Color(0xFFA9C6D1),
                        size: 30,),
                        onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Account()));
                        },
                      ),
                    ),
                    title: Text(
                      "Akun",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                    trailing: Container(
                      width: 35,
                      height: 35,
                      child: IconButton(
                        icon: Icon(Icons.navigate_next, color: Color(0xFFA9C6D1),
                        size: 33,),
                        onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Account()));
                        }
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                        
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.edit_document, color: Color(0xFFA9C6D1),
                        size: 30,),
                        onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Publish()));
                        },
                      ),
                    ),
                    title: Text(
                      "Daftar Karya",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                    trailing: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.navigate_next, color: Color(0xFFA9C6D1),
                        size: 33,),
                        onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Publish()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.settings, color: Color(0xFFA9C6D1),
                        size: 30,),
                        onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Settings()));
                        },
                      ),
                    ),
                    title: Text(
                      "Pengaturan",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                    trailing: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.navigate_next, color: Color(0xFFA9C6D1),
                        size: 33,),
                        onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Settings()));
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.info_outline, color: Color(0xFFA9C6D1),
                        size: 30,),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Info()));
                        },
                      ),
                    ),
                    title: Text(
                      "Informasi",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                    trailing: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.navigate_next, color: Color(0xFFA9C6D1),
                        size: 33,),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Info()));
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        icon: Icon(
                          Icons.logout,
                          color: Color(0xFFA9C6D1),
                          size: 30,
                        ),
                      ),
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                    trailing: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.navigate_next,
                        color: Color(0xFFA9C6D1),
                        size: 33,
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
