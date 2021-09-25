import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
       
      color: Colors.white,
      
      child: Column(
        children: [
          Center(
            
            child: Image.network(
              "https://t3.ftcdn.net/jpg/03/39/70/90/240_F_339709048_ZITR4wrVsOXCKdjHncdtabSNWpIhiaR7.jpg",
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(
            height: 40.0,
          ),
          Center(
              child: Text(
            "welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(
            height: 40.0,
          ),

          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username:"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password:"),
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Login"))
              ],
            ),
          ),
          //Image.asset("assets/login.png"),
        ],
      ),
    );
  }
}
