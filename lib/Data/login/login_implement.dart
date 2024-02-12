import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:health_portal/Data/login/login_repo.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  Dio dio = Dio();

  @override
  Future login(String username, String password) async {
   
    SharedPreferences preferences = await SharedPreferences.getInstance();
    FormData formData = FormData.fromMap({
      'username': username,
      'password': password,
    });
    try {
      final response = await dio.post(base_url + 'Login', data: formData);

      if (response.statusCode == 200) {
        print(response.data);
        final token = response.data['token'];

        preferences.setString('token', response.data['token']);
        print(token);
        
        return response.data;
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to login: $e');
    }
  }
}
