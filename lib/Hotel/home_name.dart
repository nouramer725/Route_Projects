import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeName extends StatelessWidget {
  String name;
  double verticalPadding;
  double horizontalPadding;
  double radius;
  double marginBottom;
  double marginLeft;
  double marginRight;
  HomeName({
    required this.name,
    super.key,
    this.verticalPadding = 0,
    this.radius = 0,
    this.horizontalPadding = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: marginBottom,
        left: marginLeft,
        right: marginRight,
      ),
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF024383),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
