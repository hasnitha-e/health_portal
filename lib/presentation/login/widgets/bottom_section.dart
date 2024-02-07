import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              'By creating or logging into an account you are agreeing with our ',
          style: TextStyle(color: black, fontSize: 12),
          children: [
            TextSpan(
              text: 'Terms and Conditions',
              style: TextStyle(color: blue, fontSize: 12),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: black, fontSize: 12),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(color: blue, fontSize: 12),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
