import 'package:flutter/material.dart';
import 'package:health_portal/Data/login/login_repo.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthProvider extends ChangeNotifier {
  final AuthRepository _userRepository;

  AuthProvider(this._userRepository);

  bool isLoading = false;

  Future<void> login(String email, String password,) async {
    try {
      isLoading =
          true;  

      await _userRepository.login(email, password);

      isLoading = false;
      notifyListeners();
    } catch (e) {
     print('Login Error: $e');
    }finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
