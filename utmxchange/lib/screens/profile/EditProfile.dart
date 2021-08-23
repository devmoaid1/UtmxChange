import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:utm_x_change/models/registration/studentProfile.dart';

import '../../Profile_inheritedwidget.dart';

class EditProfile extends StatefulWidget {
  ProfileInfo student;
  EditProfile(this.student);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController email = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController address = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final profile = ProfileInheritedWidget.of(context).dataservice;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.pink[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 135,
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decorationStyle: TextDecorationStyle.double,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 442,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      autofocus: false,
                      maxLength: 30,
                      minLines: 1,
                      decoration: new InputDecoration(
                        icon: FaIcon(
                          FontAwesomeIcons.envelope,
                          size: 25,
                          color: Colors.pink[900],
                        ),
                        labelText: "Enter Email",
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                        ),
                        hintText: "${widget.student.email}",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[900]),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: 16,
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter new email ";
                        }
                        return null;
                      },
                      controller: email,
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autofocus: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter new phone number ";
                        } else
                          return null;
                      },
                      decoration: new InputDecoration(
                        icon: FaIcon(
                          FontAwesomeIcons.phoneAlt,
                          size: 25,
                          color: Colors.pink[900],
                        ),
                        labelText: "Enter phone",
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                        ),
                        hintText: "${widget.student.phone}",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[900]),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        //fillColor: Colors.green
                      ),
                      maxLength: 15,
                      minLines: 1,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: 16,
                      ),
                      controller: phone,
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      autofocus: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "please enter new address ";
                        }

                        return null;
                      },
                      decoration: new InputDecoration(
                        icon: FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 25,
                          color: Colors.pink[900],
                        ),
                        labelText: "Enter Address",
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                        ),
                        hintText: "${widget.student.address}",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[900]),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        //fillColor: Colors.green
                      ),
                      maxLength: 30,
                      minLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: 16,
                      ),
                      controller: address,
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 0),
                        RaisedButton(
                          highlightElevation: 10.0,
                          highlightColor: Colors.amber,
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              await profile.updateStudent();
                              setState(() {});
                              /* Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MyProfile(
                                  student: Student(
                                      student1.fullname,
                                      phone.text,
                                      student1.country,
                                      email.text,
                                      student1.uni,
                                      address.text),
                                );
                              }));*/
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Processing Data')));
                            }
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.pink[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
