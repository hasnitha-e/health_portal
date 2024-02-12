import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .3,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/login_background.png',
            fit: BoxFit.fitWidth,
          width: double.infinity,),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: Image.asset('assets/images/logos.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
