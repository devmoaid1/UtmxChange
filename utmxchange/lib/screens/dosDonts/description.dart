import 'package:flutter/material.dart';
import 'package:utm_x_change/models/dodontModel/dodontModel.dart';

class Description extends StatelessWidget {
  final DoDont data;
  Description({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:
            (data.type != 'do') ? Color(0xfff35963) : Color(0xff5dbf98),
        title: (data.type != 'do')
            ? buildAppbarTitle("Dont's")
            : buildAppbarTitle("Do's"),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: (data.type != 'do')
                    ? buildImage('assets/images/dislike.png')
                    : buildImage('assets/images/like.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Title:',
                      style: (data.type != 'do')
                          ? buildTextStyle(20.0, Color(0xfff35963))
                          : buildTextStyle(20.0, Color(0xff5dbf98)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(data.title,
                        style: buildTextStyle(22.0, Colors.black)),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text('Description:',
                        style: (data.type != 'do')
                            ? buildTextStyle(20.0, Color(0xfff35963))
                            : buildTextStyle(20.0, Color(0xff5dbf98))),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        child: Text(data.description,
                            style: buildTextStyle(16.0, Colors.black)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Image buildImage(asset) {
    return Image.asset(asset,
        color: Color.fromRGBO(255, 255, 255, .25),
        colorBlendMode: BlendMode.modulate);
  }

  Text buildAppbarTitle(title) {
    return Text(
      title,
      style: buildTextStyle(22.0, Colors.white),
    );
  }

  TextStyle buildTextStyle(size, color) {
    return TextStyle(
      color: color,
      fontFamily: 'Overlock',
      fontWeight: FontWeight.bold,
      fontSize: size,
    );
  }
}
