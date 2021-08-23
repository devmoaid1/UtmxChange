import 'package:flutter/material.dart';


SnackBar mySnackBar(message){
  return SnackBar(
    content: Text(message,style: TextStyle(color:Colors.white),),
    backgroundColor: Color(0xff722758),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {},
    ),
  );
}