import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components.dart';
import 'get_started.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 26,
              children: [
                Text(
                  "Forgot\npassword?",
                  style: GoogleFonts.montserrat(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                InputComponentEcommerce(
                  prefixIcon: Icons.email,
                  hintText: "Enter Your Email address",
                ),
                Text(
                  "* We will send you a message to set or reset your new password",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Color(0xFF676767),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RedButton(
                  text: "Submit",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GetStarted()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
