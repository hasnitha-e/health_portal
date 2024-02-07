import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/presentation/treatment/treatment_screen.dart';

class AddTreatmentsButton extends StatelessWidget {
  const AddTreatmentsButton({super.key});

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return  Container(
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(8)),
                height: 50,
                width: size.width,
                child: MaterialButton(
                  color: const Color.fromARGB(255, 204, 242, 205),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TreatmentScreen()));
                  },
                  child: Text(
                    '+  Add Treatments',
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              );
  }
}