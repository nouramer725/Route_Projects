import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'incoming_component.dart';
import 'input_component.dart';
import 'outcome_component.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF168C4B),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: Colors.white),
          onPressed: () {},
        ),
        title: Row(
          spacing: 10,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_image.png"),
              radius: 18.5,
            ),
            Text(
              "John Safwat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.phone, color: Colors.white),
            onPressed: () {},
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.videocam, color: Colors.white),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.ellipsis_vertical, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/iPhone 16 - 1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      IncomingComponent(text: "Hello !"),
                      Outcomingcomponent(text: "Hello !"),
                      IncomingComponent(
                        text:
                            "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                      ),
                      IncomingComponent(
                        text: "What A Great Content Tp learn Flutter !",
                        imagePath:
                            "assets/images/routeimage.png",
                      ),
                      Outcomingcomponent(
                        text: "What A Great Content Tp learn Flutter !",
                      ),
                      
                    ],
                  ),
                ),
              ),
              InputComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
