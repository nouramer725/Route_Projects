import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerficationContainer extends StatelessWidget {
  const VerficationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Color(0xFFA25900), width: 0.53),
        color: Color.fromRGBO(251, 216, 188, 0.2),
      ),
      child: Row(
        spacing: 12,
        children: [
          Icon(Icons.error_outline, color: Color(0xFFEA9800)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "Verification in progress",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFFA25900),
                    letterSpacing: -0.31,
                  ),
                ),
                SelectableText(
                  "Complete your verification to unlock all features",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFC06D00),
                    letterSpacing: -0.31,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color(0xFFD9D9D9),
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Color(0xFFD9D9D9),
                    width: 0.53,
                  ),
                ),
              ),
            ),
            child: Text(
              "Continue",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
