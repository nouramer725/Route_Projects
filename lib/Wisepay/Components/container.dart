import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Container1 extends StatelessWidget {
  String text1;
  String text2;
  String value;
  Container1({
    required this.value,
    required this.text2,
    required this.text1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFD9D9D9), width: 0.53),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/Alex.png", width: 24, height: 32),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                text1,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF121212),
                  letterSpacing: -0.31,
                ),
              ),
              SelectableText(
                text2,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFFA1A1A1),
                  letterSpacing: -0.15,
                ),
              ),
            ],
          ),
          Spacer(),
          SelectableText(
            value,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Color(0xFF121212),
              letterSpacing: -0.31,
            ),
          ),
        ],
      ),
    );
  }
}
