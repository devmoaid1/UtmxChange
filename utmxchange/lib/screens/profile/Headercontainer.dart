import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Headercontainer extends StatefulWidget {
  Headercontainer({this.studname, this.url});
  final String studname;
  final String url;
  @override
  _HeadercontainerState createState() => _HeadercontainerState();
}

class _HeadercontainerState extends State<Headercontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.pink[900],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            width: 55.0,
            height: 55.0,
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              foregroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(widget.url),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            widget.studname,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 14,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
    );
  }
}
