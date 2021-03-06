import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui1sample/home/constant.dart';

class HeadWidget extends StatelessWidget {
  final String headName;

  HeadWidget(this.headName);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headName,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          Container(
            child: Row(
              children: [
                fontType('See all', Theme.of(context).primaryColor, 12,
                    FontWeight.w600),
                SizedBox(
                  width: 3,
                ),
                SvgPicture.asset(
                  'assets/arrow.svg',
                  color: Theme.of(context).primaryColor,
                  width: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
