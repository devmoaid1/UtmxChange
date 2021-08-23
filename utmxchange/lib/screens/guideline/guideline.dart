import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class Guideline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/guideline.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildGestureDetector(context, 'Travelling to Campus',travel),
                  SizedBox(height:15),
                  buildGestureDetector(context, 'Arriving at Campus',arrive),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context, text, router) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, router),
      child: Card(
        elevation: 5.0,
        color: Color(0xff82153F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              text,
              style: buildTextStyle(15.0, Colors.white, FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle buildTextStyle(size, color, weight) {
    return TextStyle(
      fontFamily: 'Overlock',
      fontWeight: weight,
      fontSize: size,
      color: color,
    );
  }
}