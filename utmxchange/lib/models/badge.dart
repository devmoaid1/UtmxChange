import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

Badge myBadge() {
  return Badge(
    position: BadgePosition.topRight(top: 0, right: 0),
    badgeContent: Text('7'),
    // elevation: 7.0,
    animationType: BadgeAnimationType.scale,
    badgeColor: Color(0xff00caa5),
    child: IconButton(
      icon: Icon(Icons.mail, size: 28),
      onPressed: () {},
    ),
  );
}
