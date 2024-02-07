import 'package:flutter/material.dart';
import 'package:health_portal/Data/login/login_repo.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthProvider extends ChangeNotifier {
  final AuthRepository _userRepository;

  AuthProvider(this._userRepository);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> login(String email, String password) async {
    try {
      _isLoading =
          true;  notifyListeners();

      await _userRepository.login(email, password);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      print('Login Error: $e');
      throw e;
    }
  }
}
