import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/Friends/friend_data.dart';

class ViewFriends extends StatefulWidget {
  final FriendDetails object;
  ViewFriends({this.object});
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<ViewFriends> {
  int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          titleSpacing: 3.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 65.0),
              Text(
                'Friend Details',
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        // margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(widget.object.url),
                          ),
                          SizedBox(
                            width: 7.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.object.shortname,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 9.0, vertical: 3.0),
                                    child: Text(
                                      widget.object.description,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      //overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: <Widget>[
                                      FaIcon(
                                        FontAwesomeIcons.envelope,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 9),
                                      Text(
                                        widget.object.email,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        //overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      FaIcon(
                                        FontAwesomeIcons.phoneAlt,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        widget.object.phone,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink[900],
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.solidEnvelope,
                size: 33,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Massages',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.bookReader,
                size: 33,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Guideline',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.thLarge,
                size: 33,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.doorOpen,
                size: 33,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
        selectedItemColor: Colors.white,
        onTap: null,
      ),
    );
  }
}
