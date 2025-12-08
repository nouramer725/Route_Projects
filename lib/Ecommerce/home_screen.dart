import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: LogoTitle(
          appColor: Color(0xFF4392F9),
          fontSize: 18,
          width: 38.78,
          height: 31.03,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarPart(
                prefixIcon: Icons.search,
                prefixIconColor: Color(0xFFBBBBBB),
                hintText: "Search any Product..",
                hintTextColor: Color(0xFFBBBBBB),
                hintTextFontSize: 14,
                suffixIcon: Icons.keyboard_voice_outlined,
                suffixIconColor: Color(0xFFBBBBBB),
                border: InputBorder.none,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Featured",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ElevatedButtonHome(
                    backgroundColor: WidgetStateProperty.all(Color(0xFFFFFFFF)),
                    text: "Sort",
                    icon: Icons.swap_vert,
                  ),
                  ElevatedButtonHome(
                    backgroundColor: WidgetStateProperty.all(Color(0xFFFFFFFF)),
                    text: "Filter",
                    icon: Icons.filter_alt_outlined,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    ListOfRowScrollable(
                      assetImage: "assets/images/beauty.webp",
                      text: "Beauty",
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/fashion.webp",
                      text: "Fashion",
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/kids.jpg",
                      text: "Kids",
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/men.webp",
                      text: "Men",
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/woman.webp",
                      text: "Woman",
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/gifts.webp",
                      text: "Gifts",
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      "50-40% OFF",
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Now in (product)",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "All colours",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButtonHome(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.transparent,
                      ),
                      elevation: WidgetStateProperty.all(0),
                      text: "Shop Now",
                      textFontWeight: FontWeight.w800,
                      textColor: Colors.white,
                      icon: Icons.arrow_forward_ios,
                      iconColor: Colors.white,
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF4392F9),
                ),
                child: Row(
                  children: [
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.access_alarm, color: Colors.white),
                            Text(
                              "22h 55m 20s remaining",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButtonHome(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.transparent,
                      ),
                      elevation: WidgetStateProperty.all(0),
                      text: "View All",
                      textFontWeight: FontWeight.w800,
                      textColor: Colors.white,
                      icon: Icons.arrow_forward_ios,
                      iconColor: Colors.white,
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    ListOfRowScrollable(
                      assetImage: "assets/images/c1.png",
                      text: "Women Printed Kurta",
                      isCircle: false,
                      text2: "Neque porro quisquam est qui dolorem ipsum quia",
                      text3: "₹1500",
                      text4: "₹2499",
                      text5: "40%Off",
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/c2.png",
                      text: "HRX by Hrithik Roshan",
                      isCircle: false,
                      text2: "Neque porro quisquam est qui dolorem ipsum quia",
                      text3: "₹1500",
                      text4: "₹2499",
                      text5: "60%Off",
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/c3.png",
                      text: "Philips BHH880/10",
                      isCircle: false,
                      text2: "Neque porro quisquam est qui dolorem ipsum quia",
                      text3: "₹1500",
                      text4: "₹2499",
                      text5: "30%Off",
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    ListOfRowScrollable(
                      assetImage: "assets/images/c4.png",
                      text: "TITAN Men Watch- 1806N",
                      isCircle: false,
                      text2: "Neque porro quisquam est qui dolorem ipsum quia",
                      text3: "₹1500",
                      text4: "₹2499",
                      text5: "20%Off",
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFF000000),
        selectedItemColor: appColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
