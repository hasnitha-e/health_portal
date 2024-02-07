import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/presentation/register_patient/register_patient_screen.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          height: 50,
          color: green,
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegisterPatientScreen()));
          },
          child: Text(
            'Register Now',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
