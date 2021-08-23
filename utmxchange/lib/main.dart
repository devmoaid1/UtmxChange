import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:utm_x_change/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initial route spalscScreen
      initialRoute: splash,
      onGenerateRoute: Router.createRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
