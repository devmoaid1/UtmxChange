

import 'package:flutter/material.dart';

class Accommodation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accommodation',
      theme: ThemeData(
        primaryColor: Color(0xff02395E),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Accommodation",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.hotel,
                size: 25,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/img3.jpg',
            ),
            Text(
              " On-Campus Accomodation is available",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Single Bed,Pillows,Mattress,Mirror"),
            Text("Wardobe, Bookshelf,  Table & Chair"),
            Text("Wifi, Curtains, Fan, Air Condition"),
            Image.asset(
              'assets/images/img4.jpeg',
            ),
            Text(
              " Room Types &  Rates",
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xff02395E),
              ),
            ),
            Image.asset(
              'assets/images/img5.PNG',
            ),
            IconButton(
              icon: Icon(Icons.mouse, size: 25, color: Colors.deepPurpleAccent),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Text(
              " For more, visit",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Text("https://admission.utm.my/accommodation/"),
          ],
        ),
      ),
    );
  }
}
