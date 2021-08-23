import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class ManageStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7f3fe),
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              imageBuilder(context),
              bodyBuilder(context),
            ],
          ),
        ),
      ),
    );
  }

  Container bodyBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33),
      decoration: BoxDecoration(
        color: Color(0xffe7f3fe),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          travelOptions(context, 'Update Notices', staff_notice),
          travelOptions(context, 'Register New Students', staff_Student_add),
          //wil be done by moaid lateron
          travelOptions(context, 'Update Students Info', staff_Student),
          SizedBox(height: 10)
        ],
      ),
    );
  }

  Container travelOptions(context, text, router) {
    return Container(
      // margin: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, router),
        child: Card(
          elevation: 5.0,
          color: Color(0xff4476bd),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(text,
                  style: buildTextStyle(16.0, Colors.white, FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff4476bd),
      title: Text(
        'Manage Students',
        style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/manage.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }

  TextStyle buildTextStyle(size, color, weight) {
    return TextStyle(
      fontFamily: 'Overlock',
      fontWeight: weight,
      fontSize: size,
      color: color,
    );
  }
}
