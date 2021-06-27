import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mthemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Color(0xFFF7F7F7),
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        
        //  color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        textTheme: Theme.of(context).textTheme,
        
      ));
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
