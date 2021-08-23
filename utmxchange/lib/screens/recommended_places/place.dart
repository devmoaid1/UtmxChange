import 'package:flutter/material.dart';

class RecommendedPlaces extends StatelessWidget {
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
          "Recommended Places",
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
                    title: Text(
                      "Places of Interest\n\nLogoland Malaysia, Nusajaya, JB Bazaar",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff531b3d),
                  child: ListTile(
                    title: Text(
                      "ISLAND & BEACHES\n\nPulau Tioman, Pulau Redang, Pulau Sibu",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff732759),
                  child: ListTile(
                    title: Text(
                      "Shopping Complex\n\nJohor Premium Outlets, City Square, Paradigm mall, Komtar JBCC",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Color(0xff531b3d),
                  child: ListTile(
                    title: Text(
                      "SHIP/BOAT\n\n To Tg. Pinang & Batam, Indonesia",
                      textAlign: TextAlign.center,
                    ),
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
