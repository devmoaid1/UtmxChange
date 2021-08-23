import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        Container(
          color: Color(0xff82153F),
          padding: EdgeInsets.all(40.0),
          child: Image.asset('assets/customIcons/icon_transparent.png'),
        ),
        Container(
          color: Colors.transparent,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                gestureForDrawer(
                  context,
                  () => Navigator.pushNamed(context, profile),
                  'Profile',
                  Icons.account_circle,
                ),
                gestureForDrawer(
                  context,
                  () => Navigator.pushNamed(context, setings),
                  'Share',
                  Icons.share,
                ),
                gestureForDrawer(
                  context,
                  () => Navigator.pushNamed(context, setings),
                  'Settings',
                  Icons.settings,
                ),
                gestureForDrawer(
                    context,
                    () => Navigator.pushNamedAndRemoveUntil(
                        context, login, (Route<dynamic> route) => false),
                    'Logout',
                    Icons.exit_to_app),
              ]),
        ),
      ]),
    );
  }

  GestureDetector gestureForDrawer(context, function, text, icon) {
    return GestureDetector(
      onTap: function,
      child: ListTile(
          title: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          leading: Icon(icon, color: Colors.black, size: 30)),
    );
  }
}
