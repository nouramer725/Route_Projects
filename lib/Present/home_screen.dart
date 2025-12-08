import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Present/row_of_search.dart';
import 'list_of_row_scrollable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> defaultList = [
    "Christmas",
    "Valentine’s Day",
    "Birthday",
    "New Year’s Day",
    "Thanksgiving",
    "Halloween",
    "Labor Day",
    "Anniversary",
    "Easter",
    "Independence Day",
    "Mother’s Day",
    "Father’s Day",
    "Black Friday",
    "Cyber Monday",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF8698FD), Color(0xFFDBBDE7)],
                stops: [0.0, 0.93],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: -70,
            right: -220,
            child: Image.asset(
              "assets/images/present.png",
              width: 551.19,
              height: 727.8,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 30,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.grid_view_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                  Text(
                    "Find your\nbest present",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  RowOfSearch(),
                  Text(
                    "Popular Tags",
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ListOfRowScrollable(defaultList: defaultList),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
