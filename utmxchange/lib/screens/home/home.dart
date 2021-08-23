import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/guideline/guideline.dart';
import 'package:utm_x_change/screens/home/appbar.dart';
import 'package:utm_x_change/screens/home/drawer.dart';
import 'package:utm_x_change/screens/home/body.dart';
import 'package:utm_x_change/models/underConstruction.dart';
import 'package:utm_x_change/models/bottomNavigationBarItem.dart';

import 'body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static var _pages = <Widget>[ UnderConstruction(),MyBody(),Guideline()];
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(_index),
      body: _pages.elementAt(_index),
      drawer: MyDrawer(),
      bottomNavigationBar: myBottomNavigation(),
    );
  }

  BottomNavigationBar myBottomNavigation() {
    return BottomNavigationBar(
      backgroundColor: Color(0xff82153F),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[300],
      currentIndex: _index,
      onTap: (int index){setState(() {_index = index;});},
      type: BottomNavigationBarType.fixed,
      items: [
        //When I use badge it give a margin by tiself and hampere my layout of the page, So I just commented that out
        // BottomNavigationBarItem(icon: myBadge(),title: Text('Messages',style: TextStyle(fontFamily: 'Overlock',fontWeight: FontWeight.bold),)),
        myBottomItem('Message', Icons.mail),
        myBottomItem('Dashboard', Icons.dashboard),
        myBottomItem('Guidelines', Icons.local_library),
      ],
    );
  }
}
