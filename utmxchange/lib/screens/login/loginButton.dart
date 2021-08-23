import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/registration/studentProfile.dart';
import 'package:utm_x_change/services/student_service_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginButton extends StatelessWidget {
  final _formKey;
  final _username;
  final _password;

  LoginButton(this._formKey, this._username, this._password);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (_formKey.currentState.validate()) {
          final userInfo = {
            "username": _username.text,
            "password": _password.text
          };
          final dataService = StudentDataService();
          final List<ProfileInfo> data = await dataService.verify(userInfo);

          if (data != null) {
            Navigator.pushNamed(context, home);
            final prefs = await SharedPreferences.getInstance();
            prefs.setString('userID', data[0].id);
            prefs.setString('name', data[0].username);
            prefs.setString('image', data[0].image);
          } else if (_username.text == 'admin' && _password.text == 'admin') {
            Navigator.pushNamed(context, staffHome);
          } else {
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Incorrect Username or Password')));
          }
        }
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue[800],
        ),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
