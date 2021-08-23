import 'package:utm_x_change/models/registration/studentProfile.dart';
import 'package:utm_x_change/services/rest_service.dart';

class StudentDataService {
  static final StudentDataService _instance = StudentDataService._constructor();
  factory StudentDataService() {
    return _instance;
  }

  StudentDataService._constructor();
  final rest = RestService();

  Future deleteStudent({String id}) async {
    await rest.delete('students/$id');
  }

  Future<ProfileInfo> createStudent({ProfileInfo student}) async {
    final json = await rest.post('students', data: student);
    return ProfileInfo.fromJson(json);
  }

  Future<List<ProfileInfo>> verify(userInfo) async {
    final json = await rest.postVerify('students/verify', data: userInfo);

    if (json == null) {
      return null;
    } else {
      return (json as List)
          .map((itemJson) => ProfileInfo.fromJson(itemJson))
          .toList();
    }
  }

  Future<ProfileInfo> updateStudent({String id, ProfileInfo student}) async {
    final json = await rest.patch('students/$id', data: student);
    return ProfileInfo.fromJson(json);
  }

  Future<List<ProfileInfo>> getAllStudents() async {
    final listJson = await rest.get('students');

    return (listJson as List)
        .map((itemJson) => ProfileInfo.fromJson(itemJson))
        .toList();
  }

  Future<List<ProfileInfo>> getAllStudentsBySemester(semseter) async {
    final listJson = await rest.post('students/semester', data: semseter);

    return (listJson as List)
        .map((itemJson) => ProfileInfo.fromJson(itemJson))
        .toList();
  }

  Future<ProfileInfo> getProfileInfo(id) async {
    final json = await rest.get('students/$id');
    return ProfileInfo.fromJson(json);
  }
} // class Quote
