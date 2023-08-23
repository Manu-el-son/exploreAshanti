import 'package:flutter/material.dart';

class PostBottomBar extends StatefulWidget {
  const PostBottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PostBottomBarState createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lake Bosomtwi",
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
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
              const SizedBox(
                height: 10,
              ),
              const Row(
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
              // const SizedBox(height: 20),
              TabBar(
                controller: _tabController,
                indicatorColor: const Color.fromRGBO(
                    7, 229, 176, 100), // Customize the indicator color
                tabs: const [
                  Tab(
                      child: Text(
                    'About',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        color: Colors.black,
                        fontSize: 20),
                  )),
                  Tab(
                      child: Text('Images',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              color: Colors.black,
                              fontSize: 20))),
                  Tab(
                      child: Text('Reviews',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              color: Colors.black,
                              fontSize: 20))),
                ],
              ),
              //const SizedBox(height: 10),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    // Content for the "About" tab
                    Center(child: Text('About Content')),

                    // Content for the "Images" tab
                    Center(child: Text('Images Content')),

                    // Content for the "Reviews" tab
                    Center(child: Text('Reviews Content'))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
