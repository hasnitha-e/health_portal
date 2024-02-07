// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/login/login.dart' as _i11;
import '../../application/patient/patient_provider.dart' as _i12;
import '../../application/treatment/treatment.dart' as _i13;
import '../../Data/login/login_implement.dart' as _i4;
import '../../Data/login/login_repo.dart' as _i3;
import '../../Data/patient/patient_repo.dart' as _i5;
import '../../Data/patient/patient_repo_impl.dart' as _i6;
import '../../Data/register_patient/register_patient_implementation.dart'
    as _i8;
import '../../Data/register_patient/register_patient_repo.dart' as _i7;
import '../../Data/tretment/treatment_repo_implementation.dart' as _i10;
import '../../Data/tretment/treatment_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
  gh.lazySingleton<_i5.PatientRepository>(() => _i6.PatientRepoImpl());
  gh.lazySingleton<_i7.RegisterPatientRepository>(
      () => _i8.RegisterPatientImplement());
  gh.lazySingleton<_i9.TreatmentRepository>(() => _i10.TreatmentRepoImpl());
  gh.factory<_i11.AuthProvider>(
      () => _i11.AuthProvider(get<_i3.AuthRepository>()));
  gh.factory<_i12.PatientProvider>(
      () => _i12.PatientProvider(get<_i5.PatientRepository>()));
  gh.factory<_i13.TreatmentProvider>(
      () => _i13.TreatmentProvider(get<_i9.TreatmentRepository>()));
  return get;
}
