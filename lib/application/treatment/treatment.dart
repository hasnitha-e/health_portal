import 'package:flutter/material.dart';
import 'package:health_portal/Data/tretment/treatment_repository.dart';
import 'package:health_portal/domain/treatment/treatment.dart';
import 'package:injectable/injectable.dart';
@injectable
class TreatmentProvider extends ChangeNotifier {
  final TreatmentRepository _repository;

  TreatmentProvider(this._repository);

  List<Treatments> _treatments = [];
  String? _selectedTreatmentName;

  List<Treatments> get treatments => _treatments;
  String? get selectedTreatmentName => _selectedTreatmentName;

  void fetchTreatments() async {
    try {
      _treatments = await _repository.getTreatments();
      notifyListeners();
    } catch (e) {
      print("Error fetching treatments: $e");
       }
  }

  void setSelectedTreatmentName(String? name) {
    _selectedTreatmentName = name;
    notifyListeners();
  }
}
