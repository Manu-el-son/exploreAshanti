import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            "assets/images/explore.png",
            width: 122,
            height: 70,
          ),
        ],
      ),
    );
  }
}
