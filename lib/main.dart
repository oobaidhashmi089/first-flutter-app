import 'package:flutter/material.dart';
import 'package:flutter_application_ob/utroutes/routes.dart';
import 'package:flutter_application_ob/widgets/themes.dart';
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
      theme: Mthemes.lightTheme(context),
      darkTheme: Mthemes.darkTheme(context),
      initialRoute: Myroutes.homeroutes,
      routes: {
        "/": (context) => Login(),
        Myroutes.homeroutes: (context) => Home(),
        Myroutes.loginroutes: (context) => Login(),
      },
    );
  }
}
