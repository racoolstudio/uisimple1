import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    bool color = true;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                
              },
              child: Container(
                child: SvgPicture.asset(
                  'assets/home.svg',
                  color: color ? Theme.of(context).primaryColor : Colors.blue,
                ),
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
