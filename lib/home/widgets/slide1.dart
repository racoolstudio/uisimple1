import 'package:flutter/material.dart';
import 'package:ui1sample/home/data/category.dart';

class Slide1 extends StatelessWidget {
  final name = Categoryy.firstslide();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemBuilder: (context, index) => Image.asset(
                name[index],
                width: 130,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: name.length),
    );
  }
}
