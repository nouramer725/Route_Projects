import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Ecommerce/register_screen.dart';
import 'components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              spacing: 34,
              children: [
                Text(
                  "Welcome\nBack!",
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
                ForgetPassword(),
                RedButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                ),
                SizedBox(height: 50),
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
                      "Create An Account",
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
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
