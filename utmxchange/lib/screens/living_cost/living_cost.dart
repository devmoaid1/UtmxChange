import 'package:flutter/material.dart';

class LivingCost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Living Cost',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Living Cost",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.monetization_on,
                //size: 25,

                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],

         
        ),
        body: Column(
         
          children: <Widget>[
            Image.asset(
              'assets/images/img1.png',
              height: 120,
              width: 120,
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Text(
                  " The actual living cost will depend on the location of your accomodation and your personal lifestyle.Living Cost in UTM,Jhor Bahru is comparatively lower than other International standard university.",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),

            Text(
              " Here is a quick view",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.deepPurple,
              ),
            ),
            Image.asset(
              'assets/images/img2.png',
              height: 260,
              width: 260,
            ),

            IconButton(
              icon: Icon(Icons.home, size: 25, color: Colors.green),
              onPressed: () => Navigator.of(context).pop(),
            ),

            //  Icon(Icons.home),
            Text("All the necessary facilities and amenities"),
            Text("are available within the campus."),
          ],
        ),
      ),
    );
  }
}
