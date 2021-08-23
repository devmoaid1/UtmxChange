import 'package:flutter/material.dart';
import 'package:utm_x_change/models/dodontModel/dodontModel.dart';
import 'package:utm_x_change/services/dodontService.dart';

class DosDontUpdate extends StatefulWidget {
  final DoDont data;
  final dataService = DosDontsDataService();
  DosDontUpdate({this.data});

  @override
  _DosDontUpdateState createState() => _DosDontUpdateState();
}

class _DosDontUpdateState extends State<DosDontUpdate> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _type = TextEditingController();

  @override
  void initState() {
    super.initState();
    _title.text = widget.data.title;
    _description.text = widget.data.description;
    _type.text = widget.data.type;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: buildAppbarTitle("Edit Do's and Dont's"),
        backgroundColor: Color(0xff4a4e69),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Title:',
                    style: buildTextStyle(16.0, Color(0xff22223b)),
                  ),
                ),
                SizedBox(height: 10),
                buildTextFormField('title', 1, _title),
                SizedBox(height: 20),
                Container(
                  child: Text('Description:',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('description', 7, _description),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text('Type',
                      style: buildTextStyle(16.0, Color(0xff22223b))),
                ),
                SizedBox(height: 10),
                Container(
                  child: buildTextFormField('type', 1, _type),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Color(0xff4a4e69),
                    textColor: Colors.white,
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        //backend code to update
                        widget.data.title = _title.text;
                        widget.data.description = _description.text;
                        widget.data.type = _type.text;

                        await widget.dataService.updateDoDont(
                            id: widget.data.id, dodont: widget.data);

                        Navigator.pop(context);
                      }
                    },
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(titleText, line, controller) {
    return TextFormField(
      style: buildTextStyle(14.0, Color(0xff22223b)),
      maxLines: line,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter $titleText here',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffc9ada7), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff4a4e69), width: 1.0),
        ),
      ),
      validator: (value) {
        if (value.isEmpty) return 'Please enter some text';
        return null;
      },
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
