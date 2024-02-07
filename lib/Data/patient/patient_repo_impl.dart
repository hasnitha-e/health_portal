import 'package:dio/dio.dart';
import 'package:health_portal/Data/api_end_points.dart';
import 'package:health_portal/Data/patient/patient_repo.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
@LazySingleton(as:PatientRepository)
class PatientRepoImpl implements PatientRepository {
  @override
  Future  getPatient() async {
    var patientList = [];
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final token = preferences.getString('token');
    final authHeader = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    Dio dio = Dio();
    try {
      final response = await dio.get(base_url + patientlist,
          options: Options(headers: authHeader));
      if (response.statusCode == 200) {
        print(response.data);
        final patient = PatientModel.fromJson(response.data);
        patientList = patient.patient!;
     return patientList; }
    } catch (e) {
      print(e);
    }
  }
}
