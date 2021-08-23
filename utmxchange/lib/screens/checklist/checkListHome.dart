import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';

class CheckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff86d1cd),
        centerTitle: true,
        title: Text(
          'Checklist',
          style: buildTextStyle(22.0, Colors.white, FontWeight.bold),
        ),
      ),
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
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 15, 15, 0),
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Checklist Guideline',
              style: buildTextStyle(20.0, Colors.black, FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 15, 15, 0),
            child: Text(
              'Please remember when you are packing your suitcase that you will have to carry your luggage around the airports and across the city to your accommodation. Therefore, a helpful tip for you to remember is if you can’t carry it, do not bring it! We also wouldl ike to recommend you do not bring more than one suit case and one carry–on bag. You will be able to purchase most of the things that you need after arriving in Malaysia',
              style: buildTextStyle(17.0, Colors.black, FontWeight.bold),
            ),
          ),
          buildChecklistCard(
              context, 'Documnets', 'assets/images/documnets.png'),
          buildChecklistCard(
              context, 'Personal', 'assets/images/personal_9.png'),
          buildChecklistCard(context, 'Tips', 'assets/images/tips.png'),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  void navigate(context, title, image) {
    Navigator.pushNamed(
      context,
      decsList,
      arguments: {'title': title, 'image': image},
    );
  }

  Padding buildChecklistCard(BuildContext context, text, image) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15, 15, 0),
      child: GestureDetector(
        onTap: () => navigate(context, text, image),
        child: Card(
          elevation: 3.0,
          color: Color(0xff86d1cd),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Overlock',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5.0,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container imageBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Image.asset(
        'assets/images/checkListHome.png',
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
