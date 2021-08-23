import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravellingToCampus extends StatefulWidget {
  @override
  _TravellingToCampusState createState() => _TravellingToCampusState();
}

class _TravellingToCampusState extends State<TravellingToCampus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          titleSpacing: 3.0,
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
                'Travelling To Campus',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
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
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                color: Colors.white,
                child: Text('Here are several Ways to get to UTM',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(18, 20, 10, 35),
                color: Colors.grey[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.plane,
                            size: 35,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text('1.By Plane',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                              )),
                        ]),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'The nearest airport to UTM is Sultan Ismail International Airport (also known as Senai Airport). You can take international flight to Kuala Lumpur International Airport (KLIA) and take a connecting flight to Sultan Ismail International Airport. Then please take a taxi from the airport taxi counter to UTM Johor Bahru, and the fare is approximately RM 30 to RM40. You may also request for grab services to our campus and their charge is usually cheaper than taxi services.',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(18, 20, 10, 35),
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.train,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('2.By Train',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                              )),
                        ]),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'You make sure your KTM train tickets to Johor Bahru. From Johor Bahru Train Station, you can take a taxi or bus to Taman Universiti. From Taman Universiti, it will be 5 minutes’ drive from UTM. You can take a taxi in front of Jusco Taman Universiti to UTM.',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(18, 20, 10, 35),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.bus,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('3.By Coach',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'From KLIA or KLIA2 to Johor Bahru, you can take YoYo Bus which will cost you around RM60 – RM70. Kindly inform the staff in charge at the service counter and bus driver to stop at Taman Tun Aminah Bus Station. Then, you can get a taxi / uber / grab service to UTM Johor Bahru Campus.',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
