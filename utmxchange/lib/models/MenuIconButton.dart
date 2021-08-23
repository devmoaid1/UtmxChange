import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function navigate;

  MenuIcon({this.icon, this.text, this.navigate});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
      ),
      elevation: 10,
      onPressed: navigate,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
            width: 80,
          ),
          Icon(
            icon,
            size: 45,
            color: Color(0xff82153F),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 13,
                color: Color(0xff82153F),
                fontWeight: FontWeight.bold,
                fontFamily: 'Overlock'),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
