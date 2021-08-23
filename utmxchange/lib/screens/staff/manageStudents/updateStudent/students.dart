import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/registration/studentProfile.dart';
import 'package:utm_x_change/services/student_service_data.dart';

class Students extends StatefulWidget {
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  final dataService = StudentDataService();
  List<ProfileInfo> students;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProfileInfo>>(
        future: dataService.getAllStudents(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            students = snapshot.data;
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
              'assets/images/friends.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          bodyBuilder(),
        ],
      ),
    );
  }

  void navigateEdit(context, index) async {
    await Navigator.pushNamed(
      context,
      staff_Student_update,
      arguments: students[index],
    );
    setState(() {});
  }

  void navigateDelete(id, index) async {
    await dataService.deleteStudent(id: id);
    setState(() {
      students.removeAt(index);
    });
  }

  DraggableScrollableSheet bodyBuilder() {
    return DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.65,
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
                return buildListTile(index);
              },
              controller: scrollController,
              itemCount: students.length,
            ),
          );
        });
  }

  Slidable buildListTile(int index) {
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
          onTap: () => navigateDelete(students[index].id, index),
        ),
      ],
      child: ListTile(
        onTap: () => navigate(index),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(students[index].image),
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          students[index].name,
          style: buildTextStyle(16.0),
        ),
        subtitle: Text(students[index].country, style: buildTextStyle(14.0)),
      ),
    );
  }

  void navigate(index) async {
    await Navigator.pushNamed(
      context,
      descStudent,
      arguments: students[index],
    );
  }

  Icon buildIcon(icon, color) {
    return Icon(
      icon,
      color: color,
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
      backgroundColor: Color(0xff7faef2),
      elevation: 0,
      centerTitle: true,
      title: Text("Students",
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          )),
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
            Text('Fetching students... Please wait'),
          ],
        ),
      ),
    );
  }
}
