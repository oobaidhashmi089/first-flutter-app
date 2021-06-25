import 'package:flutter/material.dart';
import 'package:flutter_application_ob/utroutes/routes.dart';
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
      theme: ThemeData(
        primaryColor: Color(0xFFF7F7F7),
        // primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      routes: {
        "/": (context) => login(),
        Myroutes.homeroutes: (context) => Home(),
        Myroutes.loginroutes: (context) => login(),
      },
    );
  }
}
