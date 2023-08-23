// ignore_for_file: use_key_in_widget_constructors

import 'package:explore/login/signup.dart';
import 'package:explore/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:explore/login/login.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/AL.jpg"),
              fit: BoxFit.cover,
              opacity: 1)),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Explore',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'ASHANTI',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                  child: Container(
                    width: 331,
                    height: 58,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFF07E5B0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ));
                  },
                  child: Container(
                    width: 331,
                    height: 58,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(30, 35, 44, 100),
                            ),
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text(
                    'Guest',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Urbanist',
                      color: Color(0xFF07E5B0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
