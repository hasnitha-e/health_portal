import 'package:flutter/material.dart';
import 'package:health_portal/application/login/login.dart';
import 'package:health_portal/application/patient/patient_provider.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:health_portal/presentation/patient/widgets/user_detail_card.dart';
import 'package:provider/provider.dart';

class UserDetailsList extends StatelessWidget {
  const UserDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<PatientProvider>(context, listen: false).fetchUsers();
    });

    return Consumer<PatientProvider>(
        builder: (context, patientProvider, child) {
      print('Length of patientList: ${patientProvider.patients.length}');
      return Expanded(
        child:patientProvider.isLoading?Center(child: CircularProgressIndicator()) : RefreshIndicator(onRefresh: () => patientProvider.fetchUsers(),
          child: ListView.builder(
            itemCount: patientProvider.patients.length,
            itemBuilder: (context, index) {
              final userDetails = patientProvider.patients[index];
        
              return UserDetailsCard(
                index: index + 1,
                name: userDetails.name ?? 'Unknown',
                mail: 'Unknown',
                date: userDetails.createdAt?.substring(0, 10) ?? 'Unknown',
              );
            },
          ),
        ),
      );
    });
  }
}
