import 'package:flutter/material.dart';
import '../data/popular.dart';
import 'appBar.dart';
import 'headingWidget.dart';
import 'popularwidget.dart';
import 'slide1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5).withOpacity(0.95),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            HeadWidget('Categories'),
            Slide1(),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 20),
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/banner1.png'), fit: BoxFit.fill),
              ),
            ),
            HeadWidget('Popular'),
            PopularWidget(Popular(
                name: 'Sverom chair', image: 'assets/ch1.png', price: '\$400'))
          ],
        ),
      ),
    );
  }
}
