import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Text fontType(String name,Color color, double size, FontWeight weight) {
  return Text(
    name,
    style: GoogleFonts.poppins(
      fontSize: size,
      color:color,
      fontWeight: weight,
    ),
  );
}
