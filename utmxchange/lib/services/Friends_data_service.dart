import 'dart:convert';

import '../services/rest_service.dart';
import '../models/Friends/friend_data.dart';

class FriendsDataService {
  static final FriendsDataService _instance = FriendsDataService._constructor();
  factory FriendsDataService() {
    return _instance;
  }

  FriendsDataService._constructor();
  final rest = RestService();

  Future<List<FriendDetails>> getAllFriends() async {
    final listJson = await rest.get('Friends');

    return (listJson as List)
        .map((itemJson) => FriendDetails.fromJson(itemJson))
        .toList();
  }

  Future<FriendDetails> getFriend({String id}) async {
    final friend = await rest.get('quotes/$id');
    return json.decode(friend);
  }
} // class Quote
