import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components.dart';
import 'forgetpassword_screen.dart';
import 'login_Screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              spacing: 31,
              children: [
                Text(
                  "Create an\nAccount!",
                  style: GoogleFonts.montserrat(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                InputComponentEcommerce(
                  prefixIcon: Icons.person,
                  hintText: "Username or Email",
                ),
                InputComponentEcommerce(
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility_outlined,
                  hintText: "Password",
                ),
                InputComponentEcommerce(
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility_outlined,
                  hintText: "Confirm Password",
                ),
                Text(
                  "By clicking the Register button, you agree to the public offer",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF575757),
                  ),
                ),
                RedButton(
                  text: "Create Account",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
                    );
                  },
                ),
                Column(
                  spacing: 20,
                  children: [
                    Text(
                      "- OR Continue with -",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF575757),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        SocialMediaIcon(
                          ImageAssetRe: "assets/images/google.png",
                        ),
                        SocialMediaIcon(
                          ImageAssetRe: "assets/images/apple.png",
                        ),
                        SocialMediaIcon(
                          ImageAssetRe: "assets/images/facebook.png",
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I Already Have an Account",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                          decorationColor: appColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
