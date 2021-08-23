import 'package:flutter/material.dart';
import 'package:utm_x_change/models/Friends/friend_data.dart';
import 'package:utm_x_change/screens/friends/ViewFriend.dart';

class FriendData extends StatefulWidget {
  FriendData({this.url, this.name, this.description, this.object});
  final String url;
  final String name;
  final String description;
  final FriendDetails object;

  @override
  _FriendDataState createState() => _FriendDataState();
}

class _FriendDataState extends State<FriendData> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
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
                  Container(
                    width: 55.0,
                    height: 55.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      foregroundColor: Colors.grey[200],
                      backgroundImage: NetworkImage(widget.url),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.description,
                            style: TextStyle(
                              fontSize: 13,
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
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: RaisedButton(
                highlightColor: Colors.amber,
                hoverElevation: 20.0,
                focusElevation: 30.0,
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ViewFriends(
                        object: widget.object,
                      );
                    }));
                  });
                },
                color: Colors.pink[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
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
    );
  }
}
