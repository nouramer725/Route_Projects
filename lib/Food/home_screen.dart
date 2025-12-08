import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/img.png"),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    border: Border.all(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Every Bites",
                        style: GoogleFonts.castoro(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Satisfies your cravings",
                        style: GoogleFonts.castoro(
                          color: Colors.deepOrangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Have your cravings delivered in minutes to your doorstep",
                        style: GoogleFonts.castoro(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20),
                      GradientButton(onPressed: () {}, text: "Login"),
                      SizedBox(height: 20),
                      WhiteButton(
                        onPressed: () {},
                        text: "Sign Up",
                        borderColor: Color(0xFFF7850F),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
