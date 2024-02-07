import 'package:flutter/material.dart';
import 'package:health_portal/application/login/login.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/domain/patient/patient_model.dart';
import 'package:health_portal/presentation/patient/widgets/register_button.dart';
import 'package:health_portal/presentation/patient/widgets/search_bar.dart';
import 'package:health_portal/presentation/patient/widgets/sort_by_dropdown.dart';
import 'package:health_portal/presentation/patient/widgets/user_detail_card.dart';
import 'package:health_portal/presentation/patient/widgets/user_details_list.dart';
import 'package:provider/provider.dart';

class PatientScreen extends StatelessWidget {
  PatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.all(6),
              child: Badge(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.notifications_outlined,
                  )))
        ],
      ),
      body: Column(
        children: [
          SearchBarDesign(),
          SortByDropdown(),
          Divider(
            thickness: .5,
          ),
          UserDetailsList(),
          RegisterButton()
        ],
      ),
    );
  }
}
