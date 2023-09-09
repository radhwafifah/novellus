import 'package:flutter/material.dart';
import 'package:novellus1/screens/create/create.dart';
import 'package:novellus1/screens/history.dart';
import 'package:novellus1/screens/home.dart';
import 'package:novellus1/screens/library.dart';

class Bar extends StatefulWidget {
  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int _currentIndex = 0;

  final tabs = [
    Home(),
    Library(),
    Create(),
    History()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home),
              label: 'Beranda',
              backgroundColor: Color(0xFFA9C6D1),
              ),
              BottomNavigationBarItem(
              icon:  Icon(Icons.collections_bookmark),
              label: 'Perpustakaan',
              backgroundColor: Color(0xFFA9C6D1),
              ),
              BottomNavigationBarItem(
              icon:  Icon(Icons.edit_document),
              label: 'Tulis',
              backgroundColor: Color(0xFFA9C6D1),
              ),
              BottomNavigationBarItem(
              icon:  Icon(Icons.history),
              label: 'Riwayat',
              backgroundColor: Color(0xFFA9C6D1),
              ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          ),
    );
  }
}