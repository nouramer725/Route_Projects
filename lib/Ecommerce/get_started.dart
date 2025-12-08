import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Food/home_screen.dart';
import 'components.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: List.filled(
                2,
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.5),
                  blurRadius: 100,
                ),
              ),
            ),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "You want Authentic, here you go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Find it here, buy it now!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                RedButton(text: "Get Started", onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
