import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:utm_x_change/models/CheckList/checklistModel.dart';
import 'package:utm_x_change/services/checkList_data_service.dart';

class CheckListHelperStaff extends StatefulWidget {
  final data;

  CheckListHelperStaff({this.data});
  @override
  _CheckListHelperStaffState createState() => _CheckListHelperStaffState();
}

class _CheckListHelperStaffState extends State<CheckListHelperStaff> {
  bool value = false;

  List<CheckList> _lists;

  final dataService = CheckListDataService();

  Future<List<CheckList>> getData() {
    var title = widget.data['title'];
    switch (title) {
      case 'Documents':
        return dataService.getAllDocumentsCheckLists();
      case 'Personal':
        return dataService.getAllPersonalCheckLists();
      case 'Tips':
        return dataService.getAllTipsCheckLists();
      default:
        print(title);
        return dataService.getAllDocumentsCheckLists();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CheckList>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _lists = snapshot.data;
            return buildMainWidget(context);
          }
          return _buildFetchingDataScreen();
        });
  }

  Scaffold buildMainWidget(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff5A3667),
      appBar: buildAppBarForShopping(),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.asset(
              widget.data['image'],
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
                return buildListTile(index);
              },
              controller: scrollController,
              itemCount: _lists.length,
            ),
          );
        });
  }

  void navigateEdit(context, index) async {
    await Navigator.pushNamed(
      context,
      staff_checkList_Update,
      arguments: _lists[index],
    );
    setState(() {});
  }

  void navigateAdd(context) async {
    await Navigator.pushNamed(context, staff_checkList_New,
        arguments: widget.data['title']);
    setState(() {});
  }

  void navigateDelete(id, index) async {
    await dataService.deleteCheckList(id: id);
    setState(() {
      _lists.removeAt(index);
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
          onTap: () => navigateDelete(_lists[index].id, index),
        ),
      ],
      child: CheckboxListTile(
        activeColor: Colors.green,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _lists[index].title,
            style: buildTextStyle(18.0),
          ),
        ),
        value: _lists[index].value,
        onChanged: (bool value) =>
            setState(() => _lists[index].value = !_lists[index].value),
      ),
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
      backgroundColor: Color(0xff80dde9),
      elevation: 0,
      centerTitle: true,
      title: Text(widget.data['title'],
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
            Text('Fetching checkLists... Please wait'),
          ],
        ),
      ),
    );
  }
}
