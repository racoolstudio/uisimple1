import 'package:flutter/material.dart';
import 'package:ui1sample/home/data/slide2data.dart';
import 'package:ui1sample/home/widgets/slide2widget.dart';

class Slide2 extends StatelessWidget {
  final _slide2detail = Slide2data.slide2details();
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Slide2widget(_slide2detail[index]),
        separatorBuilder: (_, index) => SizedBox(
          width: 1,
        ),
        itemCount: _slide2detail.length,
      ),
    );
  }
}
