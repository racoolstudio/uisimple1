import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/home.dart';

import '../../informationPage/informationPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 253, 253),
      body: PageView(
        children: [
          Home(),
        ],
        onPageChanged: onPageChanged,
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Container(
              padding: EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                'assets/home.svg',
                color: Theme.of(context).primaryColor,
              ),
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/chat.svg',
            ),
            label: 'chat'),
        BottomNavigationBarItem(
          label: 'cart',
          icon: SvgPicture.asset(
            'assets/cart.svg',
          ),
        ),
        BottomNavigationBarItem(
            label: 'wishlist',
            icon: SvgPicture.asset(
              'assets/wishlist.svg',
            )),
        BottomNavigationBarItem(
            label: 'profile',
            icon: SvgPicture.asset(
              'assets/profile.svg',
            )),
      ]),
    );
  }
}
