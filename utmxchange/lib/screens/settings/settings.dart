import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(0xff82153f),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text("change email"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.lock_outline, color: Colors.black),
                    title: Text("change password"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: ListTile(
                    leading: Icon(Icons.photo_camera, color: Colors.black),
                    title: Text("allow access to camera"),
                    trailing: Switch(
                        activeColor: Colors.green,
                        value: true,
                        onChanged: (val) {}),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: ListTile(
                    leading: Icon(Icons.location_on, color: Colors.black),
                    title: Text("allow access to location"),
                    trailing: Switch(
                        activeColor: Colors.green,
                        value: false,
                        onChanged: (val) {}),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: ListTile(
                    leading: Icon(Icons.notifications, color: Colors.black),
                    title: Text("notifications"),
                    trailing: Switch(
                        activeColor: Colors.green,
                        value: true,
                        onChanged: (val) {}),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
