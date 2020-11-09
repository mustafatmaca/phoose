import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:phoose/LoginPage.dart';
import 'AddPage.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>{
  int _selectedPage = 1;
  final _pageOptions = [
    AddPage(),
    HomePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: _pageOptions[_selectedPage],
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.orangeAccent,
            backgroundColor: Colors.white,
            buttonBackgroundColor: Colors.amber,
            items: <Widget>[
              Icon(Icons.add, size: 30, color: Colors.black54),
              Icon(Icons.home, size: 30, color: Colors.black54),
              Icon(Icons.settings, size: 30, color: Colors.black54),
            ],
            animationDuration: Duration(
              milliseconds: 300
            ),

            animationCurve: Curves.decelerate,

            index: _selectedPage,

            onTap: _onItemTapped,
          ),
        ),
      );
  }

}