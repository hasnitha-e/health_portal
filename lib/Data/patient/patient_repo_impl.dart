import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:health_portal/Data/api_end_points.dart';
import 'package:health_portal/Data/patient/patient_repo.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/domain/Failure/filures.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
@LazySingleton(as:PatientRepository)
class PatientRepoImpl implements PatientRepository {
  @override
  Future  <Either<Failure,List<Patient>>>getPatient() async {
    
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final token = preferences.getString('token');
    final authHeader = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    Dio dio = Dio();
    try {
      final response = await dio.get(base_url +ApiEndpoints(). patientlist,
          options: Options(headers: authHeader));
      if (response.statusCode == 200) {
        print(response.data);
        final patient = PatientModel.fromJson(response.data);
       final  patientList = patient.patient!;
        if (patientList==null) {
          return left(Failure(message: "No items available"));
        } else {
          return right(patientList);
        }
      }
       else {
        return left(Failure(
            message:
                "Failed to load data. Status code: ${response.statusCode}"));
      }
    } catch (e) {
      return left(Failure(message: "Failed to load data: $e"));
    }
  }
}
