import 'package:flutter/material.dart';
import 'package:ui1sample/home/constant.dart';

class Banner2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin:
              const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 20),
          height: 113,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/banner2.png'), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: 40,
          left: 40,
          child: fontType('Sale', const Color(0xffE29547), 32, FontWeight.w600),
        ),
        Positioned(
          top: 85,
          left: 40,
          child: fontType(
              'All chair up to', const Color(0xffE29547), 14, FontWeight.w400),
        ),
        Positioned(
          top: 78,
          left: 140,
          child: fontType('70%', const Color(0xffE29547), 20, FontWeight.w600),
        ),
        Positioned(
          top: 85,
          left: 183,
          child: fontType('off', const Color(0xffE29547), 14, FontWeight.w400),
        ),
      ],
    );
  }
}
