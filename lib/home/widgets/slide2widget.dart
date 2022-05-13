import 'package:flutter/material.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/slide2data.dart';

class Slide2widget extends StatelessWidget {
  final Slide2data data;
  Slide2widget(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 195,
      child: Stack(
        children: [
          Image.asset(
            '${data.image}',
            width: 127,
          ),
          Positioned(
              top: 10,
              left: 20,
              child: fontType(
                  '${data.name}', Color(0xff121212), 14, FontWeight.w400))
        ],
      ),
    );
  }
}
