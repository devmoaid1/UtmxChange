import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.facebook,
              color: Color(0xff82153F),
            ),
            onPressed: () {}),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.instagram,
              color: Color(0xff82153F),
            ),
            onPressed: () {}),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              color: Color(0xff82153F),
            ),
            onPressed: () {}),
        IconButton(
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Color(0xff82153F),
            ),
            onPressed: () {}),
      ],
    );
  }
}
