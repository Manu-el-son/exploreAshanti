import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:explore/pages/homepage.dart';
import 'package:explore/pages/settings.dart';

class Discovery extends StatefulWidget {
  const Discovery({super.key});

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  int selectedIndex = 2;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });

    // Box data
  }

  final List<Widget> pages = [
    const HomePage(),
    const Discovery(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Icon(Icons.arrow_back_ios_sharp),
              Image.asset(
                "assets/images/explore.png",
                width: 122,
                height: 70,
              )
            ]),
          ],
        )),
        body: Center(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      InkWell(
                        onTap: () {
                          FirebaseAuth.instance.signOut();
                        },
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout_rounded,
                                color: Colors.black,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Get Started',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                              ),
                            ]),
                      )
                    ])))),
        bottomNavigationBar: Container(
            color: Colors.white,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: GNav(
                    activeColor: const Color(0xFF07E5B0),
                    gap: 8,
                    onTabChange: navigateBottomBar,
                    tabs: const [
                      GButton(icon: Icons.home_sharp, text: 'Home'),
                      GButton(icon: Icons.search_outlined, text: 'Discover'),
                      GButton(icon: Icons.settings, text: 'Settings'),
                    ]))));
  }
}
