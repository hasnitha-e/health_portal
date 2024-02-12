import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:health_portal/Data/patient/patient_repo.dart';
import 'package:health_portal/domain/Failure/filures.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PatientProvider with ChangeNotifier {
  final PatientRepository _patientRepository;

  PatientProvider(this._patientRepository);

  Either<Failure, List<Patient>>? _patients;
  bool isLoading = false;

  Either<Failure, List<Patient>>? get patients => _patients?? Left(Failure(message: "List not loaded"));

  Future<void> fetchUsers() async {
    isLoading = true;

    try {
      _patients = await _patientRepository.getPatient();
    } catch (e) {
      _patients = Left(Failure(message: "Failed to load data: $e"));
 
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}


