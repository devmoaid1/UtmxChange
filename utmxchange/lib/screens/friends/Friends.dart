import 'dart:ui';
import 'package:flutter/material.dart';
import '../../Friend_inhiretedwidget.dart';
import '../../models/Friends/friend_data.dart';

import 'ViewFriend.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  /* var semesters = ['Current', 'previous', 'next'];

  get dropdownValue => null;

  set dropdownValue(String dropdownValue) {}*/
  List<FriendDetails> _friends;
  @override
  Widget build(BuildContext context) {
    final dataservice = FriendInhiretedWidget.of(context).dataservice;
    return FutureBuilder<List<FriendDetails>>(
      future: dataservice.getAllFriends(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          _friends = snapshot.data;
          return _buildMainScreen();
        }
        return Container();
      },
    );
  }

  Scaffold _buildMainScreen() {
    var semesters = ['Current', 'previous', 'next'];

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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 76.0),
              Text(
                'Friends',
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
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                // color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Text(
                      'List Of Students',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Text('Semester:'),
                          SizedBox(
                            width: 5,
                          ),
                          DropdownButton<String>(
                            value: semesters[0],
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 16,
                            elevation: 16,
                            style: TextStyle(color: Colors.pink[900]),
                            underline: Container(
                              height: 1,
                              color: Colors.pink[900],
                            ),
                            onChanged: (var newValue) {
                              setState(() {
                                semesters[0] = newValue;
                              });
                            },
                            items: <String>[
                              'Current',
                              'Previous',
                              'Next',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: _friends.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.0, vertical: 10.0),
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey[100],
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 55.0,
                                              height: 55.0,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.grey[200],
                                                foregroundColor:
                                                    Colors.grey[200],
                                                backgroundImage: NetworkImage(
                                                    _friends[index].url),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      _friends[index].shortname,
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      _friends[index]
                                                          .description,
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        child: RaisedButton(
                                          highlightColor: Colors.amber,
                                          hoverElevation: 20.0,
                                          focusElevation: 30.0,
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return ViewFriends(
                                                  object: _friends[index],
                                                );
                                              }));
                                            });
                                          },
                                          color: Colors.pink[900],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Text(
                                            'View Friend',
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
