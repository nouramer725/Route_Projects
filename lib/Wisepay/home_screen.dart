import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Components/container.dart';
import 'Components/gradient_container.dart';
import 'Components/market_rates.dart';
import 'Components/quick_actions.dart';
import 'Components/verfication_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 3),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "W",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          "WisePay",
          style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined),
              ),
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 14,
            children: [
              VerficationContainer(),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          "Good morning, syedsherazofficial",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xFF121212),
                            letterSpacing: -0.45,
                          ),
                        ),
                        SelectableText(
                          "Here's your financial overview",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFA1A1A1),
                            letterSpacing: -0.31,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.dark_mode_outlined),
                ],
              ),
              GradientContainer(),
              Row(
                children: [
                  SelectableText(
                    "Your Balance",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  SelectableText(
                    "View All",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container1(value: "\$1250.43", text2: "Available", text1: "USD"),
              Container1(value: "€890.22", text2: "Available", text1: "EUR"),
              Container1(value: "£456.78", text2: "Available", text1: "GBP"),
              Row(
                children: [
                  SelectableText(
                    "Quick Actions",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  QuickActions(
                    icon: CupertinoIcons.paperplane,
                    text: "Send Money",
                    iconColor: Color(0xFF000000),
                  ),
                  QuickActions(
                    icon: CupertinoIcons.qrcode,
                    text: "Request Money",
                    iconColor: Colors.blue,
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  QuickActions(
                    icon: CupertinoIcons.arrow_down,
                    text: "Add Money",
                    iconColor: Colors.green,
                  ),
                  QuickActions(
                    icon: CupertinoIcons.refresh,
                    text: "Convert Money",
                    iconColor: Colors.orange,
                  ),
                ],
              ),
              Row(
                children: [
                  SelectableText(
                    "Market Rates",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  SelectableText(
                    "View All",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              MarketRates(
                value: "0.8542",
                selectedText2: "-0.0023",
                selectedText1: "USD/EUR",
                icon: Icons.trending_down,
                iconColor: Colors.red,
                backgroundColorValue: 0xFFF9D9D9,
              ),
              MarketRates(
                value: "1.2456",
                selectedText2: "+0.0087",
                selectedText1: "GBP/USD",
                icon: Icons.trending_up,
                iconColor: Colors.green,
                backgroundColorValue: 0xFFD9F9D9,
              ),
              MarketRates(
                value: "0.8734",
                selectedText2: "+0.0012",
                selectedText1: "EUR/GBP",
                icon: Icons.trending_up,
                iconColor: Colors.green,
                backgroundColorValue: 0xFFD9F9D9,
              ),
              Row(
                children: [
                  SelectableText(
                    "Recent Activity",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  SelectableText(
                    "View All",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              MarketRates(
                value: "\$150.00",
                selectedText3: "USD",
                selectedText2: "Completed",
                selectedText1: "Transfer to John Smith",
                icon: CupertinoIcons.paperplane,
                iconColor: Colors.red,
              ),
              MarketRates(
                value: "+\$890.22",
                selectedText3: "EUR",
                selectedText2: "Pending",
                selectedText1: "Payment from Sarah Johnson",
                icon: CupertinoIcons.down_arrow,
                iconColor: Colors.green,
              ),
              MarketRates(
                value: "\$200.00",
                selectedText3: "GBP",
                selectedText2: "completed",
                selectedText1: "Converted GBP to USD",
                icon: CupertinoIcons.refresh,
                iconColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF000000),
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF000000),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_card),
            label: "Balances",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.paperplane),
            label: "Payments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_sharp),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
