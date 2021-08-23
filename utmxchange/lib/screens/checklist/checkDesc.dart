import 'package:flutter/material.dart';
import 'package:utm_x_change/models/CheckList/checklistModel.dart';
import 'package:utm_x_change/services/checkList_data_service.dart';

class CheckListHelper extends StatefulWidget {
  final data;

  CheckListHelper({this.data});
  @override
  _CheckListHelperState createState() => _CheckListHelperState();
}

class _CheckListHelperState extends State<CheckListHelper> {
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
            return buildMainScreen(context);
          }
          return _buildFetchingDataScreen();
        });
  }

  Scaffold buildMainScreen(BuildContext context) {
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
              itemCount: _lists.length, // change here please
            ),
          );
        });
  }

  CheckboxListTile buildListTile(int index) {
    return CheckboxListTile(
      activeColor: Colors.green,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          _lists[index].title, // change here also
          style: buildTextStyle(18.0),
        ),
      ),
      value: _lists[index].value, //change here the vaue also
      onChanged: (bool value) =>
          setState(() => _lists[index].value = !_lists[index].value),
      // setState(() => widget.list.documentList[index].value = value),
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
