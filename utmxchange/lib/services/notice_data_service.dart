import 'package:utm_x_change/models/notice/noticeInfo.dart';
import 'package:utm_x_change/services/rest_service.dart';

// QuoteDataService is a wrapper class implmenting calls for CRUD operations on Quote endpoints.
//  The class is implemented using the Singleton design pattern.

class NoticeDataService {
  //------- Here is how we implement 'Singleton pattern' in Dart --------

  static final NoticeDataService _instance = NoticeDataService._constructor();
  factory NoticeDataService() {
    return _instance;
  }

  NoticeDataService._constructor();
  final rest = RestService();
  //---------------------------- end of singleton implementation

  Future deleteNotice({String id}) async {
    await rest.delete('notices/$id');
  }

  Future<NoticeInfo> createNotice({NoticeInfo notice}) async {
    final json = await rest.post('notices', data: notice);
    return NoticeInfo.fromJson(json);
  }

  Future<NoticeInfo> updateNotice({String id, NoticeInfo notice}) async {
    final json = await rest.patch('notices/$id', data: notice);
    return NoticeInfo.fromJson(json);
  }

  Future<List<NoticeInfo>> getAllOfficialNotices() async {
    final listJson = await rest.get('notices/officials');

    return (listJson as List)
        .map((itemJson) => NoticeInfo.fromJson(itemJson))
        .toList();
  }

  Future<List<NoticeInfo>> getAllEventsNotices() async {
    final listJson = await rest.get('notices/events');

    return (listJson as List)
        .map((itemJson) => NoticeInfo.fromJson(itemJson))
        .toList();
  }

  Future<List<NoticeInfo>> getAllNotices() async {
    final listJson = await rest.get('notices');

    return (listJson as List)
        .map((itemJson) => NoticeInfo.fromJson(itemJson))
        .toList();
  }
} // class Quote
