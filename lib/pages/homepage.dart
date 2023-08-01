// import 'package:firebase_auth/firebase_auth.dart';
//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:explore/pages/settings.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:explore/pages/subsidiaries/a_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });

    // Box data
  }

  final List<Widget> pages = [
    const HomePage(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    // Inside the build method
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(
            "assets/images/explore.png",
            width: 122,
            height: 70,
          ),
          const Icon(Icons.account_circle, size: 40),
        ]),
      ),
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 7,
        shrinkWrap: true,
        itemBuilder: ((context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AScreen(),
                        ));
                  },
                  child: Container(
                    height: 247,
                    width: 334,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/AL.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lake Bosomtwi",
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Text(
                      '4.3',
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 20,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            activeColor: const Color(0xFF07E5B0),
            gap: 8,
            onTabChange: navigateBottomBar,
            tabs: const [
              GButton(icon: Icons.home_sharp, text: 'Home'),
              GButton(icon: Icons.search_outlined, text: 'Discover'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
