import 'package:flutter/material.dart';
import '../data/category.dart';

class Slide1 extends StatelessWidget {
  final name = Categoryy.firstslide();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(
        left: 10,
      ),
      height: 50,
      child: ListView.separated(
          itemBuilder: (context, index) => Image.asset(
                '${name[index]}',
                width: 130,
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 0.5,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: name.length),
    );
  }
}
