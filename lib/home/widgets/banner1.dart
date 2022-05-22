import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';

class Banner1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
          height: 130,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/banner1.png'), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: 40,
          left: 40,
          child: fontType('High quality sofa\nstarted', const Color(0xff4E5471),
              12, FontWeight.w400),
        ),
        Positioned(
          top: 75,
          left: 40,
          child: fontType('70%', const Color(0xff4E5471), 32, FontWeight.w700),
        ),
        Positioned(
          top: 95,
          left: 110,
          child: fontType('off', const Color(0xff4E5471), 14, FontWeight.w400),
        ),
        Positioned(
          bottom: 10,
          left: 40,
          child: Row(
            children: [
              fontType('See all items', const Color(0xff4E5471), 10,
                  FontWeight.w400),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                'assets/arrow.svg',
                color: const Color(0xff4E5471),
                width: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
