import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/models/dodontModel/dodontModel.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:utm_x_change/services/dodontService.dart';

class DosDontsStaff extends StatefulWidget {
  @override
  _DosDontsStaffState createState() => _DosDontsStaffState();
}

class _DosDontsStaffState extends State<DosDontsStaff> {
  final dataService = DosDontsDataService();
  List<DoDont> dodont;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DoDont>>(
        future: dataService.getAllDosDonts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            dodont = snapshot.data;
            return buildMainScreen(context);
          }
          return _buildFetchingDataScreen();
        });
  }

  Scaffold buildMainScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff722758),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              'assets/images/dosanddonts.png',
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
        backgroundColor: Color(0xff5dbf98),
      ),
    );
  }

  void navigateEdit(context, index) async {
    await Navigator.pushNamed(
      context,
      staff_dosdont_update,
      arguments: dodont[index],
    );
    setState(() {});
  }

  void navigateAdd(context) async {
    await Navigator.pushNamed(
      context,
      staff_dosdont_new,
    );
    setState(() {});
  }

  void navigateDelete(id, index) async {
    await dataService.deleteDosDonts(id: id);
    setState(() {
      dodont.removeAt(index);
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
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23.0),
                  topLeft: Radius.circular(23.0)),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildListTile(index);
              },
              controller: scrollController,
              itemCount: dodont.length,
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
          onTap: () => navigateDelete(dodont[index].id, index),
        ),
      ],
      child: ListTile(
        onTap: () => navigate(index),
        title: Text(
          dodont[index].title,
          style: buildTextStyle(18.0),
        ),
        trailing: (dodont[index].type != 'do')
            ? buildIcon(Icons.thumb_down, Color(0xfff35963))
            : buildIcon(Icons.thumb_up, Color(0xff5dbf98)),
      ),
    );
  }

  void navigate(index) async {
    await Navigator.pushNamed(
      context,
      descOfDd,
      arguments: dodont[index],
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
      backgroundColor: Color(0xff722758),
      elevation: 0,
      centerTitle: true,
      title: Text("Do's and Dont's",
          style: TextStyle(
            fontFamily: 'Overlock',
            fontWeight: FontWeight.bold,
            fontSize: 22,
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
            Text('Fetching Dos and Donts... Hold wait'),
          ],
        ),
      ),
    );
  }
}
