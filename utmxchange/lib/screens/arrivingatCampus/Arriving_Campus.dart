import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArrivingCampus extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<ArrivingCampus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          titleSpacing: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Arriving At Campus',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 23,
                  letterSpacing: 3.0,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              )
            ],
          ),
          backgroundColor: Colors.pink[900],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.grey[200],
            child: Text(
                'Here are some steps you should do after arriving  to  UTM',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  color: Colors.pink[900],
                )),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 40, 40),
            color: Colors.grey[100],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '1.Register for accommodation',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.clipboardList,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Student should head to UTM international to finish accomodation procedures ',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'RECEPTION AT UTM INTERNATIONAL, BLOCK S19, UTM JOHOR BAHRU',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 40, 40, 40),
            color: Colors.grey[200],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '2.Proceed for medical check up  ',
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'Roboto',
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.clipboardList,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Student should head to UTM Health Care to finish medical check up',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Pusat Pentadbiran Universiti Teknologi Malaysia, 80990 Skudai, Johor',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 40, 40, 40),
            color: Colors.grey[100],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '3.Fees payment at Bursar office',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.clipboardList,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Student Should head to UTM bursary to finish payments procedures',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Bendahari,Universiti Teknologi Malaysia, Jalan Budi, 81310 Skudai, Johor',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 40, 40, 40),
            color: Colors.grey[200],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '4.Get your student card',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.clipboardList,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Student should head to S19 building to take photo and get Student Card',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'RECEPTION AT UTM INTERNATIONAL, BLOCK S19, UTM JOHOR BAHRU',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 40, 40, 40),
            color: Colors.grey[100],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    child: Text(
                      '5.Register yourself at the respective faculty',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        color: Colors.pink[900],
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.clipboardList,
                          size: 20,
                          color: Colors.pink[900],
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            'Student should go to his registered faculty to finish all of the registration procuderes.',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.pink[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
