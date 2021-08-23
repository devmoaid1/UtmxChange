import 'package:flutter/material.dart';

BottomNavigationBarItem myBottomItem(text,icon) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 28,
      ),
      title: Text(text,
          style:
              TextStyle(fontFamily: 'Overlock', fontWeight: FontWeight.bold)));
}
