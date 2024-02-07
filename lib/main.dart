import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/providers/providers.dart';
import 'package:health_portal/domain/di/injectable.dart';
import 'package:health_portal/presentation/login/login_screen.dart';
import 'package:health_portal/presentation/patient/patient_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjenction();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(backgroundColor: white,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          useMaterial3: true,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
