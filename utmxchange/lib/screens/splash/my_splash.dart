import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:utm_x_change/constants.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context,login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff82153F),
      body: FlareActor(
        "assets/flare_files/splash.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "splash",
        )
    );
  }
}