import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text fontType(String name, Color color, double size, FontWeight weight) {
  return Text(
    name,
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: weight,
    ),
  );
}

Color active = const Color(0xffE29547);
Color activeback = const Color(0xffFFEEDD);
Color inactive = const Color(0xffAAAAAA);

class info {
  static List infowidget() {
    return [
      fontType(
          'Description dolor sit amet, consectetur \nadipiscing elit. Nunc consectetur velit at\nmassa vehicula, quis fringilla urna gravida.',
          inactive,
          14,
          FontWeight.w400),
      fontType(
          'Material dolor sit amet, consectetur \nadipiscing elit. Nunc consectetur velit at\nmassa vehicula, quis fringilla urna gravida.',
          inactive,
          14,
          FontWeight.w400),
      fontType(
          'Reviews dolor sit amet, consectetur \nadipiscing elit. Nunc consectetur velit at\nmassa vehicula, quis fringilla urna gravida.',
          inactive,
          14,
          FontWeight.w400),
    ];
  }
}
