import 'package:health_portal/domain/patient/patient_model.dart';

abstract class AuthRepository {
  Future login(String username, String password);
}
