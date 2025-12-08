import 'package:flutter/material.dart';

import 'home_name.dart';

// ignore: must_be_immutable
class HomeComponent extends StatelessWidget {
  String name;
  String imagePath;

  HomeComponent({required this.name, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Image.asset(imagePath),
          ),
          HomeName(
            name: name,
            marginBottom: 8,
            verticalPadding: 8,
            marginLeft: 8,
            marginRight: 8,
            radius: 40,
            horizontalPadding: 16,
          ),
        ],
      ),
    );
  }
}
