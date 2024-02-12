


import 'package:dartz/dartz.dart';
import 'package:health_portal/domain/Failure/filures.dart';
import 'package:health_portal/domain/patient/patient_model.dart';

abstract class PatientRepository {
  Future  <Either<Failure,List<Patient>>>getPatient();
}