import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class StaffDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        Container(
          color: Color(0xff2c4260),
          padding: EdgeInsets.all(40.0),
          child: Image.asset('assets/customIcons/icon_transparent.png'),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Color(0xff2c4260).withOpacity(.9),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                gestureForDrawer(
                  context,
                  () => Navigator.pushNamed(context, setings),
                  'Credits',
                  Icons.offline_pin,
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
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          leading: Icon(icon, color: Colors.white, size: 30)),
    );
  }
}
