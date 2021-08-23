import 'package:utm_x_change/models/dodontModel/dodontModel.dart';
import 'package:utm_x_change/services/rest_service.dart';

// QuoteDataService is a wrapper class implmenting calls for CRUD operations on Quote endpoints.
//  The class is implemented using the Singleton design pattern.

class DosDontsDataService {
  //------- Here is how we implement 'Singleton pattern' in Dart --------

  static final DosDontsDataService _instance =
      DosDontsDataService._constructor();
  factory DosDontsDataService() {
    return _instance;
  }

  DosDontsDataService._constructor();
  final rest = RestService();
  //---------------------------- end of singleton implementation

  Future deleteDosDonts({String id}) async {
    await rest.delete('dodonts/$id');
  }

  Future<DoDont> createDoDont({DoDont dodont}) async {
    final json = await rest.post('dodonts', data: dodont);
    return DoDont.fromJson(json);
  }

  Future<DoDont> updateDoDont({String id, DoDont dodont}) async {
    final json = await rest.patch('dodonts/$id', data: dodont);
    return DoDont.fromJson(json);
  }

  Future<List<DoDont>> getAllDosDonts() async {
    final listJson = await rest.get('dodonts');

    return (listJson as List)
        .map((itemJson) => DoDont.fromJson(itemJson))
        .toList();
  }
}
