import 'package:flutter/material.dart';

class DashboardImageSection extends StatelessWidget {
  final String image;
  DashboardImageSection({this.image = 'assets/images/avator.jpg'});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 110.0,
                  height: 110.0,
                  padding: const EdgeInsets.all(8.0), // borde width
                  decoration: new BoxDecoration(
                    color: Colors.white, // border color
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                    backgroundColor: Colors.white,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
