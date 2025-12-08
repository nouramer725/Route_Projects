import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowOfSearch extends StatelessWidget {
  const RowOfSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.search,
                  color: Color.fromRGBO(139, 136, 136, 1),
                ),
                Text(
                  "Search",
                  style: GoogleFonts.inter(
                    color: Color(0xFF8B8888),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.filter_alt_outlined,
            color: Color.fromRGBO(139, 136, 136, 1),
          ),
        ),
      ],
    );
  }
}
