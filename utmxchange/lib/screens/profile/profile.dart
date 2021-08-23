import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/registration/studentProfile.dart';
import '../../Profile_inheritedwidget.dart';
import 'EditProfile.dart';
import 'Headercontainer.dart';

class MyProfile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<MyProfile> {
  var semesters = ['Current', 'previous', 'next'];

  get dropdownValue => null;

  set dropdownValue(String dropdownValue) {}
  ProfileInfo _student;
  int id;
  @override
  Widget build(BuildContext context) {
    final dataservice = ProfileInheritedWidget.of(context).dataservice;

    return FutureBuilder(
      future: dataservice.getProfileInfo(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          _student = snapshot.data;
          return _buildmainscreen();
        }
        return Container();
      },
    );
  }

  Scaffold _buildmainscreen() {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 14,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
          )),
      body: Container(
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 25.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                15.0, // Move to right 10  horizontally
                15.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 11),
        margin: EdgeInsets.fromLTRB(3, 20, 3, 3),
        child: Column(
          children: <Widget>[
            Headercontainer(
              studname: _student.name,
              url: _student.age,
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                // color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Expanded(child: _profilebuilder()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView _profilebuilder() {
    return ListView(children: <Widget>[
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.userTie,
                      size: 36,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _student.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Lato',
                                color: Colors.pink[900],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Student Name',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.phoneSquare,
                      size: 33,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _student.phone,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.pink[900],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Phone number',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.globeEurope,
                      size: 33,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _student.country,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.pink[900],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'origin',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.envelope,
                      size: 35,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _student.email,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.pink[900],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Email address',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.university,
                      size: 33,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _student.faculty,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.pink[900],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Faculty',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 33,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _student.address,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.pink[900],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile(_student)),
            );
          },
          color: Colors.pink[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            'Edit Profile',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      )
    ]);
  }
}
