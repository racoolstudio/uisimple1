import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final Color color = const Color(0xffAAAAAA);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore What \nYour Home Needs',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.notification_important_sharp,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    'assets/search.svg',
                    width: 20,
                    color: const Color(0xffaaaaaa),
                  ),
                ),
                hintText: 'Chair, desk, lamp, etc',
                hintStyle: GoogleFonts.poppins(
                  color: color,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
