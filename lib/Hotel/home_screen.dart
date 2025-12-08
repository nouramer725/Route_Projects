import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_name.dart';
import 'home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              HomeName(
                name: "Available Hotels",
                verticalPadding: 16,
                radius: 16,
              ),
              Row(
                spacing: 8,
                children: [
                  HomeComponent(
                    name: "Sharm El Sheikh",
                    imagePath: "assets/images/Sharm.png",
                  ),
                  HomeComponent(
                    name: "Alexandria",
                    imagePath: "assets/images/Alex.png",
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  HomeComponent(
                    name: "Dahab",
                    imagePath: "assets/images/Dahab.png",
                  ),
                  HomeComponent(
                    name: "Marasy",
                    imagePath: "assets/images/marasy.png",
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  HomeComponent(
                    name: "Nile",
                    imagePath: "assets/images/nile.png",
                  ),
                  HomeComponent(
                    name: "Aswan",
                    imagePath: "assets/images/Aswan.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
