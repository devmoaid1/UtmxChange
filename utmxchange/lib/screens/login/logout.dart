import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/login/login.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Image.asset(
          'assets/images/logout.png',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: MediaQuery.of(context).size.width / 13,
          child: RaisedButton(
            color: Color(0xffFF7481),
            textColor: Colors.grey[200],
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
            child: Text(
              'Login Again',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Overlock',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
