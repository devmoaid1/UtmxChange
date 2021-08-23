import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class DosAndDontsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
        title: Text(
          "Malaysian Culture",
          style: TextStyle(color: Colors.black),
        ),
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
                  color: Color(0xff732759),
                  child: ListTile(
                    title: Text("Do's in\nMALAYSIA",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap: () => Navigator.pushNamed(context, dos),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff531b3d),
                  child: ListTile(
                    title: Text("Don'ts in\nMALAYSIA",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap: () => Navigator.pushNamed(context, donts),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
