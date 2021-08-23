import 'package:flutter/material.dart';

staffAppBar(index) {
  switch (index) {
    case 0: return appBar(Color(0xff2c4260).withOpacity(0.9));
    case 1: return appBar(Color(0xff2c4260).withOpacity(0.9));
  }
}

AppBar appBar(color) {
  return AppBar(
      backgroundColor: color,
      elevation: 5.0,
      leading: Lol(),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: Image.asset('assets/customIcons/icon_transparent.png'),
        ),
      ]);
}

class Lol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, size: 35, color: Colors.white),
      onPressed: () => Scaffold.of(context).openDrawer(),
    );
  }
}
