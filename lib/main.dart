import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch:Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),


     routes: {
       "/": (context)=> login(),
       "/home": (context)=> Home(),
       "/Login": (context)=>login(),

     }, 
    );
    
  }
}
