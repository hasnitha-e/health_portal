import 'package:health_portal/domain/patient/patient_model.dart';

abstract class RegisterPatientRepository {
  Future<String> updatePatient(Patient patient);
}