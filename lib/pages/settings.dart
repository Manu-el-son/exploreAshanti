import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:explore/pages/homepage.dart';
import 'package:explore/pages/discovery.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedIndex = 3;
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
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const Icon(Icons.arrow_back_ios_sharp),
            const Text(
              'Settings',
              style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/explore.png",
              width: 122,
              height: 70,
            ),
          ]),
        ),
        body: Center(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      const Text(
                        'General',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(
                                        217,
                                        217,
                                        217,
                                        100,
                                      ),
                                      width: 350))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.person_outline_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text('Account'),
                              SizedBox(
                                width: 219,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(
                                        217,
                                        217,
                                        217,
                                        100,
                                      ),
                                      width: 350))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text('Notification'),
                              SizedBox(
                                width: 203,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(
                                        217,
                                        217,
                                        217,
                                        100,
                                      ),
                                      width: 350))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text('About'),
                              SizedBox(
                                width: 239,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(
                                        217,
                                        217,
                                        217,
                                        100,
                                      ),
                                      width: 350))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.delete_outline,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text('Delete Account'),
                              SizedBox(
                                width: 177,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Feedback',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(
                                        217,
                                        217,
                                        217,
                                        100,
                                      ),
                                      width: 350))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.report_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text('Report a bug'),
                              SizedBox(
                                width: 203,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(
                                        217,
                                        217,
                                        217,
                                        100,
                                      ),
                                      width: 350))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.send_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text('Send Feedback'),
                              SizedBox(
                                width: 186,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
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
