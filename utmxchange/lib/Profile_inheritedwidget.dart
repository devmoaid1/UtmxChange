import 'package:flutter/material.dart';
import 'services/student_service_data.dart';

class ProfileInheritedWidget extends InheritedWidget {
  ProfileInheritedWidget({Key key, this.child}) : super(key: key, child: child);

  final Widget child;
  final dataservice = StudentDataService();

  static ProfileInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProfileInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ProfileInheritedWidget oldWidget) {
    return true;
  }
}
