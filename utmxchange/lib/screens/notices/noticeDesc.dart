import 'package:flutter/material.dart';
import 'package:utm_x_change/models/notice/noticeInfo.dart';

class NoticeHelper extends StatelessWidget {
  final NoticeInfo data;
  NoticeHelper({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffdc5c5d),
        title: Text(
          data.title,
          style: buildTextStyle(22.0, Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: buildImage('assets/images/noticeDesc.jpg'),
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
                        'Date:',
                        style: buildTextStyle(16.0, Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(data.date,
                          style: buildTextStyle(16.0, Colors.black)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text('Description:',
                          style: buildTextStyle(16.0, Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(data.description,
                          style: buildTextStyle(14.0, Colors.black)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text('Attatchment:',
                          style: buildTextStyle(16.0, Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Text(data.attatchment,
                          style: buildTextStyle(14.0, Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center buildImage(asset) {
    return Center(
      child: Image.asset(asset,
          color: Color.fromRGBO(255, 255, 255, .25),
          colorBlendMode: BlendMode.modulate),
    );
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
