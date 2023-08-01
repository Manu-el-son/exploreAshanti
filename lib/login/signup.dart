// ignore_for_file: library_private_types_in_public_api

//import 'package:explore/main.dart';
//import 'dart:js';

import 'package:explore/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:explore/login/login.dart';
import 'package:explore/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';

//import '../pages/homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  final emailContoller = TextEditingController();
  final passController = TextEditingController();
  final confirmpassController = TextEditingController();
  bool passToggle = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            const Text(
              "Hello! Register to get",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(7, 229, 176, 100)),
            ),
            const Text(
              "started.",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(7, 229, 176, 100)),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
                style: const TextStyle(fontFamily: 'Urbanist'),
                keyboardType: TextInputType.emailAddress,
                controller: emailContoller,
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)))),
            //prefixIcon: const Icon(Icons.email_rounded))),
            const SizedBox(height: 20),
            TextFormField(
                style: const TextStyle(fontFamily: 'Urbanist'),
                keyboardType: TextInputType.emailAddress,
                obscureText: passToggle,
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  //prefixIcon: const Icon(Icons.lock_rounded),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(passToggle
                        ? Icons.visibility
                        : Icons.visibility_off_rounded),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                style: const TextStyle(fontFamily: 'Urbanist'),
                keyboardType: TextInputType.emailAddress,
                obscureText: passToggle,
                controller: confirmpassController,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  //prefixIcon: const Icon(Icons.lock_rounded),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(passToggle
                        ? Icons.visibility
                        : Icons.visibility_off_rounded),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                signup();
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF07E5B0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                    child: Text("Register!",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.white))),
              ),
            ),
            const Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Expanded(
                  child: Divider(
                color: Color.fromRGBO(232, 236, 244, 100),
                thickness: 1,
              )),
              SizedBox(width: 15),
              Text(
                'or Register with',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(106, 112, 124, 100),
                    fontFamily: 'Urbanist',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              ),
              SizedBox(width: 15),
              Expanded(
                  child: Divider(
                      color: Color.fromRGBO(232, 236, 244, 100), thickness: 1))
            ]),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // facebook button
                SquareTile(imagePath: 'assets/images/Facebook.png'),

                SizedBox(width: 8),

                // google button
                SquareTile(imagePath: 'assets/images/google.png'),

                SizedBox(width: 8),

                // apple button
                SquareTile(imagePath: 'assets/images/apple.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogInScreen(),
                          ));
                    },
                    child: const Text("Log In",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF07E5B0))))
              ],
            )
          ],
        )),
      )),
    );
  }

  Future<void> signup() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailContoller.text.trim(), password: passController.text);
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => const HomePage())));
    } catch (e) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Try again')));
    }

    //navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
