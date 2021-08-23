import 'package:flutter/material.dart';
import 'package:utm_x_change/screens/staff/dashboard/report/countryReport.dart';
import 'package:utm_x_change/screens/staff/dashboard/report/facultyReport.dart';
import 'package:utm_x_change/screens/staff/dashboard/report/regestrationReport.dart';
import 'package:utm_x_change/screens/staff/dashboard/report/semesterReport.dart';
import 'package:utm_x_change/constants.dart';

class DashBody extends StatefulWidget {
  @override
  _DashBodyState createState() => _DashBodyState();
}

class _DashBodyState extends State<DashBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff2c4260).withOpacity(0.9),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            FacultyReport(),
            Center(
                child: Container(
                    // padding: EdgeInsets.only(top:10),
                    child: Text(
              'Number of Students from Different Faculty',
              style: builTextStyle(16.0, FontWeight.bold),
            ))),
            SizedBox(height: 20),
            buildCard(),
            SizedBox(height: 10),
            SemesterReport(),
            Center(
                child: Container(
                    // padding: EdgeInsets.only(top:10),
                    child: Text(
              'Number of Students from Different Semester',
              style: builTextStyle(16.0, FontWeight.bold),
            ))),
            SizedBox(height: 10),
            CountryReport(),
            Center(
                child: Container(
                    // padding: EdgeInsets.only(top:10),
                    child: Text(
              'Number of Students from Different Country',
              style: builTextStyle(16.0, FontWeight.bold),
            ))),
            SizedBox(height: 10),
            RegistrationReport(),
            Center(
                child: Container(
                    // padding: EdgeInsets.only(top:10),
                    child: Text(
              'Student Registrations',
              style: builTextStyle(16.0, FontWeight.bold),
            ))),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildMenuCard('Manage Students', 'manage', staff_Student_manage),
          buildMenuCard('Update GUI Info', 'update', staff_updateGUI),
        ],
      ),
    );
  }

  Widget buildMenuCard(text, icon, router) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, router),
      child: Container(
        width: MediaQuery.of(context).size.width * .45,
        child: Card(
          elevation: 5,
          color: Color(0xff2c4260),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/customIcons/$icon.png'),
              ),
              // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: builTextStyle(16.0, FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle builTextStyle(size, weight) {
    return TextStyle(
      fontFamily: 'Overlock',
      fontWeight: weight,
      fontSize: size,
      color: Colors.white,
    );
  }
}
