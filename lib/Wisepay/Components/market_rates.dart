import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketRates extends StatelessWidget {
  String selectedText1;
  String selectedText2;
  String selectedText3;
  String value;
  final IconData icon;
  final Color iconColor;
  final int backgroundColorValue;

  MarketRates({
    required this.value,
    this.selectedText3 = "",
    required this.icon,
    required this.iconColor,
    this.backgroundColorValue = 0xFFFFFFFF,
    required this.selectedText2,
    required this.selectedText1,
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
          IconButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color(backgroundColorValue),
              ),
            ),
            onPressed: () {},
            icon: Icon(icon, color: iconColor),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  selectedText1,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFF121212),
                    letterSpacing: -0.31,
                  ),
                ),
                SelectableText(
                  selectedText2,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFFA1A1A1),
                    letterSpacing: -0.15,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SelectableText(
                value,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: Color(0xFF121212),
                  letterSpacing: -0.31,
                ),
              ),
              SelectableText(
                selectedText3,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFFA1A1A1),
                  letterSpacing: -0.15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
