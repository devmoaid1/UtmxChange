import 'package:utm_x_change/services/rest_service.dart';
import 'package:utm_x_change/models/CheckList/checklistModel.dart';

// QuoteDataService is a wrapper class implmenting calls for CRUD operations on Quote endpoints.
//  The class is implemented using the Singleton design pattern.

class CheckListDataService {
  //------- Here is how we implement 'Singleton pattern' in Dart --------

  static final CheckListDataService _instance =
      CheckListDataService._constructor();
  factory CheckListDataService() {
    return _instance;
  }

  CheckListDataService._constructor();
  final rest = RestService();
  //---------------------------- end of singleton implementation

  Future deleteCheckList({String id}) async {
    await rest.delete('checklists/$id');
  }

  Future<CheckList> createCheckList({CheckList list}) async {
    final json = await rest.post('checklists', data: list);
    return CheckList.fromJson(json);
  }

  Future<CheckList> updateCheckList({String id, CheckList list}) async {
    final json = await rest.patch('checklists/$id', data: list);
    return CheckList.fromJson(json);
  }

  Future<List<CheckList>> getAllPersonalCheckLists() async {
    final listJson = await rest.get('checklists/personal');

    return (listJson as List)
        .map((itemJson) => CheckList.fromJson(itemJson))
        .toList();
  }

  Future<List<CheckList>> getAllDocumentsCheckLists() async {
    final listJson = await rest.get('checklists/documents');

    return (listJson as List)
        .map((itemJson) => CheckList.fromJson(itemJson))
        .toList();
  }

  Future<List<CheckList>> getAllTipsCheckLists() async {
    final listJson = await rest.get('checklists/tips');

    return (listJson as List)
        .map((itemJson) => CheckList.fromJson(itemJson))
        .toList();
  }
} // class Quote
