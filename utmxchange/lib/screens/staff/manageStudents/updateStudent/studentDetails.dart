import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utm_x_change/models/registration/studentProfile.dart';

class ProfileHelper extends StatelessWidget {
  final ProfileInfo profile;

  ProfileHelper({this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff722758),
        title: Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'overlock',
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xff722758), Color(0xff5a3667)]),
              ),
            ),
            clipper: ProfileClipper(),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).size.height * .07,
            child: Column(
              children: <Widget>[
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(profile.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(75)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black54,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: EdgeInsets.all(4.0),
                          child: buildTextMiddle(
                              profile.description, 16.0, FontWeight.normal),
                        ),
                      ),
                    ),
                    //as//
                    SizedBox(height: 20),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(context, 'Name', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(
                                context, profile.name, 16.0, FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(context, 'Age', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(
                                context, profile.age, 16.0, FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(context, 'Gender', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(context, profile.gender, 16.0,
                                FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(
                                context, 'University', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(context, profile.university, 16.0,
                                FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(
                                context, 'Country', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(context, profile.country, 16.0,
                                FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(
                                context, 'Semester', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(context, profile.semester, 16.0,
                                FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(
                                context, 'Faculty', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(context, profile.faculty, 16.0,
                                FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(context, 'Email', 16.0, FontWeight.bold),
                            SizedBox(height: 3),
                            buildText(context, profile.email, 16.0,
                                FontWeight.normal),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Container buildText(context, text, size, weight) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 0, bottom: 0, right: 0),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'overlock',
          fontWeight: weight,
          fontSize: size,
        ),
      ),
    );
  }

  Text buildTextMiddle(text, size, weight) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'overlock',
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }

  Row bottomNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        socialMedia(FontAwesomeIcons.facebook),
        socialMedia(FontAwesomeIcons.instagram),
        socialMedia(FontAwesomeIcons.linkedin),
        socialMedia(FontAwesomeIcons.whatsapp),
      ],
    );
  }

  IconButton socialMedia(name) {
    return IconButton(
        icon: FaIcon(
          name,
          color: Color(0xff722758),
        ),
        onPressed: null);
  }
}

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 4.2);
    path.lineTo(size.width + 500, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
