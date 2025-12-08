import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  const InputComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            cursorColor: Color(0xFF168C4B),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              prefixIcon: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 16),
                onPressed: () {},
                icon: Icon(CupertinoIcons.camera, color: Colors.white),
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 16),
                onPressed: () {},
                icon: Icon(CupertinoIcons.paperplane, color: Colors.white),
              ),
              hintText: "Type a message ....",
              hintStyle: TextStyle(color: Colors.white, fontSize: 12),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFF168C4B)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFF168C4B)),
              ),
            ),
          ),
        ),

        FloatingActionButton(
          backgroundColor: Color(0xFF168C4B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(CupertinoIcons.mic, color: Colors.white, size: 28),
          onPressed: () {},
        ),
      ],
    );
  }
}
