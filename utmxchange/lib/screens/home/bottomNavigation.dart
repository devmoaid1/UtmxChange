import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
class MyBottmNav extends StatefulWidget {

  @override
  _MyBottmNavState createState() => _MyBottmNavState();
}

class _MyBottmNavState extends State<MyBottmNav> {
  Badge myBadge(){
    return Badge(
      position: BadgePosition.topRight(top: 0, right: 0),
            badgeContent: Text('7'),
            // elevation: 7.0,
            animationType: BadgeAnimationType.scale,
            badgeColor: Color(0xff00caa5),
            child: IconButton(
              icon: Icon(Icons.mail,size: 28),
              onPressed: () {},
              )
    );
    }
  int _index = 2;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color(0xff82153F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          // BottomNavigationBarItem(icon: myBadge(),title: Text('Messages',style: TextStyle(fontFamily: 'Overlock',fontWeight: FontWeight.bold),)),
          BottomNavigationBarItem(icon: Icon(Icons.mail,size: 28,),title: Text('Messages',style: TextStyle(fontFamily: 'Overlock',fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(icon: Icon(Icons.local_library,size: 28,),title: Text('Guidelines',style: TextStyle(fontFamily: 'Overlock',fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,size: 28,),title: Text('Dashboard',style: TextStyle(fontFamily: 'Overlock',fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app,size: 28,),title: Text('Logout',style: TextStyle(fontFamily: 'Overlock',fontWeight: FontWeight.bold))),
        ],
        );
  }
}