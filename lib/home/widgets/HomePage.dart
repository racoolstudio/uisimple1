import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';
import 'package:ui1sample/home/widgets/banner1.dart';
import 'package:ui1sample/home/widgets/banner2.dart';
import 'package:ui1sample/home/widgets/popularwidget.dart';
import 'package:ui1sample/home/widgets/slide2.dart';
import 'package:ui1sample/informationPage/informationPage.dart';

import '../../bag/bagPage.dart';
import 'appBar.dart';
import 'headingWidget.dart';
import 'slide1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _popularList = Popular.popularinfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            CustomAppBar(),
            HeadWidget('Categories'),
            Slide1(),
            Banner1(),
            HeadWidget('Popular'),
            Container(
              height: 550,
              padding: const EdgeInsets.only(bottom: 30),
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 20,
              ),
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () => setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Info(_popularList[index]),
                                  ));
                            }),
                        child: PopularWidget(_popularList[index])),
                    itemCount: _popularList.length - 1,
                  );
                },
              ),
            ),
            Banner2(),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    fontType('Rooms', Colors.black, 20, FontWeight.w600),
                    fontType('Furniture for every corners in your home',
                        const Color(0xffaaaaaa), 12, FontWeight.w400)
                  ],
                ),
              ),
            ),
            Slide2(),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.only(top: 10),
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
          icon: GestureDetector(
            onTap: () => setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BagWidgetPage()),
              );
            }),
            child: SvgPicture.asset(
              'assets/cart.svg',
            ),
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
