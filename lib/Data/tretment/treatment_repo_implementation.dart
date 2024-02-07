import 'package:dio/dio.dart';
import 'package:health_portal/Data/api_end_points.dart';
import 'package:health_portal/domain/treatment/treatment.dart';
import 'package:health_portal/Data/tretment/treatment_repository.dart';
import 'package:health_portal/core/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: TreatmentRepository)
class TreatmentRepoImpl implements TreatmentRepository {
  @override
  Future getTreatments() async {
    List treatmentList = [];
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final token = preferences.getString('token');
    final authHeader = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    Dio dio = Dio();
    try {
      final response = await dio.get(base_url + treatment,
          options: Options(headers: authHeader));
      if (response.statusCode == 200) {
        print(response.data);
        final treatments = TreatmentModel.fromJson(response.data);

        treatmentList=treatments.treatments!;
        return treatmentList;
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to fetch treatments: $e');
    }
    return treatmentList;
  }
}
