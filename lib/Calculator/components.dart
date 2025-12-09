import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef OnDigitClicked = void Function(String text);

class Components extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  Function onPressed;
  final double fontSize;
  bool isIcon;

  Components({
    this.backgroundColor = Colors.transparent,
    this.textColor = Colors.white,
    required this.text,
    required this.onPressed,
    this.fontSize = 35,
    this.isIcon = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          onPressed(text);
        },
        backgroundColor: backgroundColor,
        child:
            isIcon
                ? Icon(Icons.backspace_outlined, color: textColor, size: 35)
                : Text(
                  text,
                  style: GoogleFonts.castoro(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      ),
    );
  }
}
