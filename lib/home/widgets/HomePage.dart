import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';
import 'package:ui1sample/home/widgets/banner1.dart';
import 'package:ui1sample/home/widgets/banner2.dart';
import 'package:ui1sample/home/widgets/slide2.dart';
import 'package:ui1sample/home/widgets/slide2widget.dart';
import 'package:ui1sample/home/data/slide2data.dart';
import 'package:ui1sample/informationPage/informationPage.dart';
import 'appBar.dart';
import 'headingWidget.dart';
import 'popularwidget.dart';
import 'slide1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 253, 253),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            HeadWidget('Categories'),
            Slide1(),
            Banner1(),
            HeadWidget('Popular'),
            PopularWidget(Popular(
                name: 'Sverom chair', image: 'assets/ch1.png', price: '\$400')),
            Banner2(),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    fontType('Rooms', Colors.black, 20, FontWeight.w600),
                    fontType('Furniture for every corners in your home',
                        Color(0xffaaaaaa), 12, FontWeight.w400)
                  ],
                ),
              ),
            ),
            Slide2(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (() => Navigator.push(
                  (context), MaterialPageRoute(builder: (context) => Info()))),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: SvgPicture.asset(
                  'assets/home.svg',
                  color: Theme.of(context).primaryColor,
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
