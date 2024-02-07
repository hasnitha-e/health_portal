import 'package:health_portal/application/login/login.dart';
import 'package:health_portal/application/patient/patient_provider.dart';
import 'package:health_portal/application/treatment/treatment.dart';
import 'package:health_portal/domain/di/injectable.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [...remoteProviders];

List<SingleChildWidget> remoteProviders = [
  ChangeNotifierProvider(create: (_) => getIt<AuthProvider>()),
  ChangeNotifierProvider(create: (_) => getIt<PatientProvider>()),
  ChangeNotifierProvider(create: (_) => getIt<TreatmentProvider>()),
];
