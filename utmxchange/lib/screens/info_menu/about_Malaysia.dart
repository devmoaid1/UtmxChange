import 'package:flutter/material.dart';

class AboutMalaysia extends StatelessWidget {
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
          "About Malaysia",
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
                      "Divided into West Malaysia (Peninsular Malaysia)\nand\nEast Malaysia (Sabah and Sarawak)",
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
                      "Multiracials\nAmong the race is Malay (majority), Chinese, Indian, Sikhs, Orang Asli (Aboriginal People etc",
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
                      "With this comes a myriad of languagespoken, religious, festivals, food & customs",
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
                      "Islam is the official religion. However, the rights of other religins are protected under The Constitution and can be practiced freely throughout Malaysia. Among other religions include Chistianity, Buddism, Hindusim and Shikhism",
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
                      "Because of the multicultural heritage, many religious festivals are also public holidays and are celebrated nationwide regardless of race of belief",
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
                      "CURRENCY\nRinggit Malaysia(RM)\n USD 1 = RM 4.1\nPreferred payment method: cash, debit/credit card",
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
                      "LANGUAGE:\nMalay, Tamil, Engish, Mandaring and Chinese dialects\n\nMost Malaysians are multilingual",
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
                      "TIME ZONE: \nGMT +8hrs",
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
