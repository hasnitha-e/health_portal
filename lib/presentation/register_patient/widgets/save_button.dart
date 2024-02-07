import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: grey),
          borderRadius: BorderRadius.circular(8)),
      height: 50,
      width: size.width,
      child: MaterialButton(
        color: green,
        onPressed: () async {},
        child: Text(
          'Save',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
