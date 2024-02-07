import 'package:flutter/material.dart';
import 'package:health_portal/Data/patient/patient_repo.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PatientProvider with ChangeNotifier {
  final PatientRepository _patientRepository;

  PatientProvider(this._patientRepository);

  List<Patient> _patients = [];
  bool isLoading = false;

  List<Patient> get patients => _patients;

   Future<void> fetchUsers() async {
    isLoading = true;  notifyListeners();

    try {
      _patients = await _patientRepository.getPatient();
    } catch (e) {
     
    } finally {
      isLoading = false; notifyListeners();
    }
  }
  
}
