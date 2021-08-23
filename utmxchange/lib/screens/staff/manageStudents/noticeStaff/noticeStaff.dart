import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:utm_x_change/models/notice/noticeInfo.dart';
import 'package:utm_x_change/services/notice_data_service.dart';

class NoticeStaff extends StatefulWidget {
  @override
  _NoticeStaffState createState() => _NoticeStaffState();
}

class _NoticeStaffState extends State<NoticeStaff> {
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
            return builMainScreen(context);
          }
          return _buildFetchingDataScreen();
        });
  }

  Scaffold builMainScreen(BuildContext context) {
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
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        onPressed: () => navigateAdd(context),
        child: Icon(Icons.add),
        backgroundColor: Color(0xff3e2d4a),
      ),
    );
  }

  void navigateEdit(context, index) async {
    await Navigator.pushNamed(
      context,
      staff_notice_update,
      arguments: notices[index],
    );
    setState(() {});
  }

  void navigateAdd(context) async {
    await Navigator.pushNamed(
      context,
      staff_notice_add,
    );
    setState(() {});
  }

  void navigateDelete(id, index) async {
    await dataService.deleteNotice(id: id);
    setState(() {
      notices.removeAt(index);
    });
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

  Slidable buildListTile(int index, context) {
    return Slidable(
      key: ValueKey(index),
      actionPane: SlidableDrawerActionPane(),
      dismissal: SlidableDismissal(
        child: SlidableDrawerDismissal(),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Color(0xff5dbf98),
          icon: Icons.edit,
          onTap: () => navigateEdit(context, index),
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Color(0xfff35963),
          icon: Icons.delete,
          onTap: () => navigateDelete(notices[index].id, index),
        ),
      ],
      child: ListTile(
        onTap: () => navigate(index, context),
        leading: (notices[index].type == 'official')
            ? Icon(Icons.assistant, color: Color(0xff3e2d4a))
            : Icon(Icons.event, color: Color(0xff3e2d4a)),
        title: Text(
          notices[index].title,
          style: buildTextStyle(16.0),
        ),
        trailing: Text(notices[index].date, style: buildTextStyle(14.0)),
      ),
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
