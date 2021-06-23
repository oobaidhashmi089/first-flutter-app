import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
    
      
      ),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      
      routes: {
        "/": (context) => login(),
        "/home": (context) => Home(),
        "/Login": (context) => login(),
      },
    );
  }
}
