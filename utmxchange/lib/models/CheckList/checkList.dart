import 'package:utm_x_change/models/CheckList/checkListData.dart';

class CheckListTemplate{
  String title;
  List <CheckListData> documentList ;
  String imageLocation;

  CheckListTemplate({this.documentList,this.title,this.imageLocation});
}