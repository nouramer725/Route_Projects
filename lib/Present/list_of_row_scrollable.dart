import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfRowScrollable extends StatelessWidget {
  List<String> defaultList;
  ListOfRowScrollable({required this.defaultList, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < defaultList.length; i += 5)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int j = i; j < i + 5 && j < defaultList.length; j++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: j % 2 == 0 ? Color(0xFFFFE9FF) : Color(0xFFE4E7FF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        defaultList[j],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
