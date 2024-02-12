
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:health_portal/Data/api_end_points.dart';
import 'package:health_portal/Data/login/login_repo.dart';
import 'package:health_portal/Data/patient/patient_repo.dart';
import 'package:health_portal/Data/register_patient/register_patient_repo.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: RegisterPatientRepository)
class RegisterPatientImplement implements  RegisterPatientRepository{
  Dio dio = Dio();

    
  
 @override
  Future<String> updatePatient(Patient patient) async {
    try {
      final response = await dio.post(
        base_url+ApiEndpoints() .register,
        data: patient.toJson(),
      );

      if (response.statusCode == 200) {
        return response.data.toString();
      } else {
        throw Exception('Failed to update patient');
      }
    } catch (e) {
      throw Exception('Network Error: $e');
    }
  }
  
 
    
  
}
