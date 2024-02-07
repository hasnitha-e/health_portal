import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/presentation/login/widgets/first_section.dart';
import 'package:health_portal/presentation/login/widgets/second_section.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopSection(), SecondSection()],
        ),
      ),
    );
  }
}
