import 'package:flutter/material.dart';

class AboutUTM extends StatelessWidget {
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
          "About UTM",
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
                      "1904\nTreacher Technical School,\nWeldRoad (Jalan Raja Chulan)",
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
                      "1906\nTechnical School,\nBatu Lane Banunan Muzium,\nBukitNanas",
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
                      "1925\nTechnical School,\nJalan Briickfields---JKR",
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
                      "1930\nTechnical School, High Street",
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
                      "1946\nTechnical College - Diploma",
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
                      "1955\nTechnical College\nJalan Gurney",
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
                      "1960\nTechnical College -- \nProfessional Programmes",
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
                      "1972\nNational Institute of Tecknology - ITK\n(university status)",
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
                      "1975\nUNIVERSITI TEKNOLOGI MALAYSIA",
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
                      "2010\nResearch University",
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
                      "2 Campuses\n1. Johor Bahru (main campus)\n2. Kuala Lampur Campus",
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
                      "Estimated Population\n500,000",
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
