import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui1sample/home/constant.dart';
import 'package:ui1sample/home/data/popular.dart';

// ignore: must_be_immutable
class PopularWidget extends StatelessWidget {
  Popular popular;
  PopularWidget(this.popular);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 170,
      child: Stack(children: [
        Positioned(
          left: 1,
          right: 1,
          top: 80,
          child: Container(
            height: 155,
            width: 157,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3)),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 90,
          right: 2,
          left: 2,
          child: Container(
            height: 149,
            width: 157,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '${popular.image}',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 55,
            left: 5,
            child: fontType(
                '${popular.name}', Color(0xffaaaaaa), 12, FontWeight.w400)),
        Positioned(
            bottom: 25,
            left: 5,
            child: fontType(
                '${popular.price}', Colors.black, 14, FontWeight.w600)),
        Positioned(
          top: 20,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              'assets/fav.svg',
              width: 16,
            ),
            radius: 15,
          ),
        ),
      ]),
    );
  }
}
