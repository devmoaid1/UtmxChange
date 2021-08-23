import 'package:flutter/material.dart';
import 'services/Friends_data_service.dart';

class FriendInhiretedWidget extends InheritedWidget {
  FriendInhiretedWidget({Key key, this.child}) : super(key: key, child: child);

  final Widget child;
  final dataservice = FriendsDataService();

  static FriendInhiretedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FriendInhiretedWidget>();
  }

  @override
  bool updateShouldNotify(FriendInhiretedWidget oldWidget) {
    return true;
  }
}
