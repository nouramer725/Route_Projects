import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components.dart';
import '../login_Screen.dart';
import 'dataOnBoarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {},
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${currentIndex + 1}",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "/${onboardingData.length}",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFA0A0A1),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          if (currentIndex != 3)
            TextButton(
              onPressed: () {
                _controller.jumpToPage(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                "Skip",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, index) {
                final item = onboardingData[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(item.image, height: 300, width: 300),
                    Text(
                      item.title,
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      item.description,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color(0xFFA8A8A9),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed:
                        currentIndex == 0
                            ? null
                            : () {
                              _controller.previousPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.ease,
                              );
                            },
                    child: Text(
                      "Prev",
                      style: GoogleFonts.montserrat(
                        color:
                            currentIndex == 0
                                ? Colors.transparent
                                : Color(0xFFC4C4C4),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingData.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.only(right: 10),
                      width: currentIndex == index ? 40 : 8,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == index
                                ? Colors.black
                                : Colors.grey[300],
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      if (currentIndex == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: Text(
                      currentIndex == 2 ? "Get Started" : "Next",
                      style: GoogleFonts.montserrat(
                        color: appColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
