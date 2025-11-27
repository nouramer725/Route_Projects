import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketRates extends StatelessWidget {
  String selectedtext1;
  String selectedtext2;
  String selectedtext3;
  String value;
  final IconData icon;
  final Color iconColor;
  final int backgroundColorvalue;

  MarketRates({
    required this.value,
    this.selectedtext3 = "",
    required this.icon,
    required this.iconColor,
    this.backgroundColorvalue = 0xFFFFFFFF,
    required this.selectedtext2,
    required this.selectedtext1,
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
                Color(backgroundColorvalue),
              ),
            ),
            onPressed: () {},
            icon: Icon(icon, color: iconColor),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                selectedtext1,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF121212),
                  letterSpacing: -0.31,
                ),
              ),
              SelectableText(
                selectedtext2,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SelectableText(
                value,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Color(0xFF121212),
                  letterSpacing: -0.31,
                ),
              ),
              SelectableText(
                selectedtext3,
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
