import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_portal/application/login/login.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/presentation/login/widgets/bottom_section.dart';
import 'package:health_portal/presentation/login/widgets/login_form.dart';
import 'package:health_portal/presentation/patient/patient_screen.dart';
import 'package:provider/provider.dart';

class SecondSection extends StatefulWidget {
  SecondSection({super.key});

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        child: ListView(
          children: [
            TitleLogin(),
            khieght,
            LoginForm(),
            SizedBox(
              height: size.height * .05,
            ),
            const BottomSection(),
          ],
        ),
      ),
    );
  }
}

class TitleLogin extends StatelessWidget {
  const TitleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login Or Register To Book\nYour Appointments',
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
    );
  }
}
