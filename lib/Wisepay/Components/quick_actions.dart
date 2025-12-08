import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickActions extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const QuickActions({required this.iconColor, required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD9D9D9), width: 0.53),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor, size: 24, weight: 2.67),
            SizedBox(height: 8),
            Text(
              text,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF121212),
                letterSpacing: -0.31,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
