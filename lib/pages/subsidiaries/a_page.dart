import 'package:flutter/material.dart';
import 'package:explore/components/post_app_bar.dart';

class AScreen extends StatelessWidget {
  const AScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/AL.png'),
              fit: BoxFit.cover,
              opacity: 0.7)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(900),
          child: PostAppBar(),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height / 2,
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Bosomtwi",
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.pin_drop_rounded,
                            color: Color.fromRGBO(7, 229, 176, 100),
                            size: 23.25,
                          ),
                          Text(
                            'Kumasi',
                            style:
                                TextStyle(fontFamily: 'Urbanist', fontSize: 14),
                          )
                        ],
                      ),
                      Row(
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
                            size: 11.07,
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(7, 229, 176, 100),
                            size: 11.07,
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(7, 229, 176, 100),
                            size: 11.07,
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(7, 229, 176, 100),
                            size: 11.07,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Color.fromRGBO(7, 229, 176, 100),
                            size: 11.07,
                          ),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
