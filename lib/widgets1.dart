import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appStyle {
  static Color bgcolor = Color(0xffECF1F1);
  static Color maincolor = Color(0xff0B4461);
  static Color accentColor = Color(0xff3A91CD);


  static List<Color>cardsColors = [
    Colors.white,
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.blueGrey.shade100,
  ];
  static TextStyle maintiltle = GoogleFonts.roboto(
    fontSize: 18.0, fontWeight: FontWeight.bold,
  );
  static TextStyle maincontent = GoogleFonts.nunito(
      fontSize: 16.0, fontWeight: FontWeight.normal);
  static TextStyle dateTitle = GoogleFonts.roboto(
      fontSize: 13.0, fontWeight: FontWeight.w500);


}