// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class IncomingComponent extends StatelessWidget {
  String imagePath;
  String text;

  IncomingComponent({required this.text, this.imagePath = "", super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 268,
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
            topLeft: Radius.zero,
          ),
          color: Color(0xFF168C4B),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
      
            if (imagePath.isNotEmpty)
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Image.asset(imagePath),
              ),
          ],
        ),
      ),
    );
  }
}
