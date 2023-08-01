// ignore_for_file: library_private_types_in_public_api

import 'package:explore/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:explore/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:explore/pages/homepage.dart';
//import 'package:flutter/services.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formkey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final emailContoller = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

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
            const SizedBox(
              height: 112,
            ),
            const Text(
              "Welcome Back! Glad",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(7, 229, 176, 100)),
            ),
            const Text(
              "to see you, again",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(7, 229, 176, 100)),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
                style: const TextStyle(fontFamily: 'Urbanist'),
                keyboardType: TextInputType.emailAddress,
                controller: emailContoller,
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(232, 236, 244, 100))),
                    fillColor: const Color.fromRGBO(247, 248, 249, 100),
                    filled: true)),
            //prefixIcon: const Icon(Icons.email_rounded))),
            const SizedBox(height: 17),
            TextFormField(
                style: const TextStyle(fontFamily: 'Urbanist'),
                keyboardType: TextInputType.emailAddress,
                obscureText: passToggle,
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(232, 236, 244, 100))),
                  fillColor: const Color.fromRGBO(247, 248, 249, 100),
                  filled: true,
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
              height: 50,
            ),
            InkWell(
              onTap: () {
                login();
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF07E5B0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                    child: Text("Log In!",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            color: Colors.white))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Expanded(
                  child: Divider(
                color: Color.fromRGBO(232, 236, 244, 100),
                thickness: 1,
              )),
              SizedBox(width: 8),
              Text(
                'or Log In With',
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
                //facebook button
                SquareTile(imagePath: 'assets/images/Facebook.png'),

                SizedBox(
                  width: 8,
                ),

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
                const Text("Don't have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Urbanist',
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                    child: const Text("Register Now",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF07E5B0))))
              ],
            )
          ],
        )),
      )),
    );
  }

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailContoller.text.trim(), password: passController.text);
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => const HomePage())));
    } catch (e) {
      Navigator.pop(context);
      const SnackBar(content: Text('Try again'));
    }
  }
}
