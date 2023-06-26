import 'package:flutter/material.dart';
import 'package:explore/welcomescreen.dart';
import 'package:explore/signup.dart';

void main() {
  runApp(explore());
}

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 27, 26, 26)),
      home: WelcomeScreen(),
    );
  }
}
