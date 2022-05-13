import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';
import 'package:ui1sample/home/widgets/appBar.dart';
import 'package:ui1sample/home/widgets/banner1.dart';
import 'package:ui1sample/home/widgets/banner2.dart';
import 'package:ui1sample/home/widgets/headingWidget.dart';
import 'package:ui1sample/home/widgets/popularwidget.dart';
import 'package:ui1sample/home/widgets/slide1.dart';
import 'package:ui1sample/home/widgets/slide2.dart';
import 'package:ui1sample/home/widgets/slide2widget.dart';
import 'package:ui1sample/home/data/slide2data.dart';
import 'package:ui1sample/informationPage/informationPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppBar(),
      Expanded(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              HeadWidget('Categories'),
              Slide1(),
              Banner1(),
              HeadWidget('Popular'),
              PopularWidget(Popular(
                  name: 'Sverom chair', image: 'assets/ch1.png', price: '')),
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
      )
    ]);
  }
}
