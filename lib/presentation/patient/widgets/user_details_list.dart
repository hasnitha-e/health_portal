import 'package:flutter/material.dart';
import 'package:health_portal/application/login/login.dart';
import 'package:health_portal/application/patient/patient_provider.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:health_portal/presentation/patient/widgets/user_detail_card.dart';
import 'package:provider/provider.dart';

class UserDetailsList extends StatefulWidget {
  const UserDetailsList({super.key});

  @override
  State<UserDetailsList> createState() => _UserDetailsListState();
}

class _UserDetailsListState extends State<UserDetailsList> {
  @override
  void initState() {
    Provider.of<PatientProvider>(context, listen: false).fetchUsers();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PatientProvider>(
        builder: (context, patientProvider, child) {
      return Expanded(
          child: patientProvider.isLoading
              ? Center(child: CircularProgressIndicator())
              : patientProvider.patients!.fold(
                  (l) => Center(child: Text(l.message)),
                  (r) => RefreshIndicator(
                    onRefresh: () => patientProvider.fetchUsers(),
                    child: ListView.builder(
                      itemCount: r.length,
                      itemBuilder: (context, index) {
                        final userDetails = r[index];

                        return UserDetailsCard(
                          index: index + 1,
                          name: userDetails.name ?? 'Unknown',
                          mail: 'Unknown',
                          date: userDetails.createdAt?.substring(0, 10) ??
                              'Unknown',
                        );
                      },
                    ),
                  ),
                ));
    });
  }
}
