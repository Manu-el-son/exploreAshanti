import 'package:flutter/material.dart';
import 'package:explore/components/post_app_bar.dart';
import 'package:explore/components/post_bottom_bar.dart';

class AScreen extends StatelessWidget {
  const AScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/LB.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
