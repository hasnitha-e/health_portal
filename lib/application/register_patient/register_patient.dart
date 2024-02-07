

import 'package:flutter/material.dart';
import 'package:health_portal/Data/register_patient/register_patient_repo.dart';
import 'package:health_portal/domain/patient/patient_model.dart';


class RegisterPatientProvider extends ChangeNotifier {
  final RegisterPatientRepository repository;

  RegisterPatientProvider(this.repository);

  Future<String> updatePatient(Patient patient) async {
    try {
      final response = await repository.updatePatient(patient);
      notifyListeners();    return response;
    } catch (e) {
      throw Exception('Failed to update patient: $e');
    }
  }

}