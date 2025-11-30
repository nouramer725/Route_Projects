import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/Ecommerce/components.dart';
import 'package:hotel/Ecommerce/onBoarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 9,
          children: [
            Image.asset("assets/images/logo.png"),
            Text(
              "Stylish",
              style: GoogleFonts.libreCaslonText(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: appColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
