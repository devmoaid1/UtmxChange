import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/home/bodyImageSection.dart';
import 'package:utm_x_change/screens/home/menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  String name, image;
  Future getNameAndImage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name');
      image = prefs.getString('image');
      print(name);
      print(image);
    });
  }

  @override
  void initState() {
    super.initState();
    getNameAndImage();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 17),
          child: Image.asset('assets/images/headShape.png'),
        ),
        DashboardImageSection(image: image),
        Positioned(
          top: MediaQuery.of(context).size.width / 3.5,
          left: MediaQuery.of(context).size.width / 2.7,
          child: Container(
            child: Text(
              'Hi $name',
              style: TextStyle(
                fontFamily: 'Overlock',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DashboardMenu(),
      ],
    );
  }
}
