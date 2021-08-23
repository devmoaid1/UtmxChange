import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/notice/noticeInfo.dart';
import 'package:utm_x_change/services/notice_data_service.dart';

class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  final dataService = NoticeDataService();
  List<NoticeInfo> notices;
  String dropdownValue = 'All';

  Future<List<NoticeInfo>> getData() {
    switch (dropdownValue) {
      case 'All':
        return dataService.getAllNotices();
      case 'Event':
        return dataService.getAllEventsNotices();
      case 'Official':
        return dataService.getAllOfficialNotices();
      default:
        return dataService.getAllNotices();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NoticeInfo>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            notices = snapshot.data;
            return buildMainScreen(context);
          }
          return _buildFetchingDataScreen();
        });
  }

  Scaffold buildMainScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5A3667),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/notice.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          bodyBuilder(),
        ],
      ),
    );
  }

  DraggableScrollableSheet bodyBuilder() {
    return DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.65,
        // maxChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildListTile(index, context);
              },
              controller: scrollController,
              itemCount: notices.length,
            ),
          );
        });
  }

  ListTile buildListTile(int index, context) {
    return ListTile(
      onTap: () => navigate(index, context),
      leading: (notices[index].type == 'official')
          ? Icon(Icons.assistant, color: Color(0xff3e2d4a))
          : Icon(Icons.event, color: Color(0xff3e2d4a)),
      title: Text(
        notices[index].title,
        style: buildTextStyle(16.0),
      ),
      trailing: Text(notices[index].date, style: buildTextStyle(14.0)),
    );
  }

  void navigate(index, context) async {
    await Navigator.pushNamed(
      context,
      descNotice,
      arguments: notices[index],
    );
  }

  TextStyle buildTextStyle(size) {
    return TextStyle(
      color: Color(0xff5A3667),
      fontFamily: 'Overlock',
      fontWeight: FontWeight.bold,
      fontSize: size,
    );
  }

  AppBar buildAppBarForShopping() {
    return AppBar(
      backgroundColor: Color(0xff3e2d4a),
      elevation: 0,
      actions: <Widget>[buildMyDrpodown()],
      centerTitle: true,
      title: Text("Notices",
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          )),
    );
  }

  DropdownButton buildMyDrpodown() {
    return DropdownButton<String>(
      value: dropdownValue,
      dropdownColor: Color(0xff3e2d4a),
      icon: Icon(
        Icons.arrow_drop_down_circle,
        color: Colors.white,
      ),
      iconSize: 24,
      elevation: 0,
      style: TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['All', 'Event', 'Official']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
    );
  }

  Scaffold _buildFetchingDataScreen() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 50),
            Text('Fetching Notices... Please wait'),
          ],
        ),
      ),
    );
  }
}
