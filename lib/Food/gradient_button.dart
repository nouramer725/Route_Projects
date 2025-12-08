import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const GradientButton({required this.onPressed, required this.text, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 0),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFA9D14), Color(0xFFF7850F), Color(0xFFF46B09)],
          stops: [0.19, 0.46, 1.0],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),

        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.charisSil(fontSize: 22, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  Color borderColor;

  WhiteButton({
    required this.borderColor,
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 0),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.charisSil(fontSize: 22, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
