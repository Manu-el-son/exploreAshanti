import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lake Bosomtwi",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop_rounded,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 39,
                    ),
                    Text(
                      'Kumasi',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '4.3',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 25,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 25,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 25,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 25,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Color.fromRGBO(7, 229, 176, 100),
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
