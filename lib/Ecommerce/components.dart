import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appColor = Color(0xFFF83758);

class InputComponentEcommerce extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String hintText;

  const InputComponentEcommerce({
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            cursorColor: Color(0xFFA8A8A9),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF3F3F3),
              prefixIcon: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 16),
                onPressed: () {},
                icon: Icon(prefixIcon, color: Color(0xFF626262)),
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 16),
                onPressed: () {},
                icon: Icon(suffixIcon, color: Color(0xFF626262)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.montserrat(
                color: Color(0xFF676767),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFA8A8A9)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFA8A8A9)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Forget Password?",
            style: GoogleFonts.montserrat(
              color: appColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class RedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const RedButton({this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 21, horizontal: 109),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          backgroundColor: appColor,
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String ImageAssetRe;

  const SocialMediaIcon({required this.ImageAssetRe, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFFCF3F6),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: appColor, width: 2),
      ),
      child: Image.asset(ImageAssetRe),
    );
  }
}
