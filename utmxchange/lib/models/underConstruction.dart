import 'package:flutter/material.dart';

class UnderConstruction extends StatefulWidget {
  @override
  _UnderConstructionState createState() => _UnderConstructionState();
}

class _UnderConstructionState extends State<UnderConstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset(
        'assets/images/underConstruction.png',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height/1.2,
        // width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
