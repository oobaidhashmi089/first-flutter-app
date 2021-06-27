import 'package:flutter/material.dart';
import 'package:flutter_application_ob/utroutes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changef = false;
  final _formkey = GlobalKey<FormState>();
  moveHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changef = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeroutes);
      setState(() {
        changef = false;
      });
    }
  }

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff310263),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Center(
              child: Center(
                child: Image.asset(
                  "asset/dev.png",
                  fit: BoxFit.cover,
                  height: 150,
                  width: 600,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Container(
                child: Image.asset(
                  "asset/flutter_64px.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username:",
                      labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter Username";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password:",
                      labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter Password";
                      } else if (value.length < 8) {
                        return "password length should be atleast 8";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Material(
                      // color: Colors.blue.shade900,
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(changef ? 50 : 8.0),
                      child: InkWell(
                        onTap: () => moveHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changef ? 50 : 150,
                          height: 50,
                          child: Center(
                            child: changef
                                ? Icon(
                                    Icons.done,
                                    color: Colors.black,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                          ),
                          //decoration: BoxDecoration(
                          // color: Colors.deepPurple,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 200,
              color: Color(0xff310263),
              // child: Image.asset(
              //   "asset/linkedin_circled_96px24235235.png",
              // )
            ),
          ],
        ),
      ),
    );
  }
}
