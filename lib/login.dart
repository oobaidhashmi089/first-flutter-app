import 'package:flutter/material.dart';
import 'package:flutter_application_ob/utroutes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool changef = false;

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff310263),
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
                "asset/dragon.png",
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
                  focusColor: Color(0xFFFFFFFF),
                )),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password:"),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, Myroutes.homeroutes);
                //     },
                //     child: Text("Login"),
                //     style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                //   ),
                // )

                Material(
                    // color: Colors.blue.shade900,
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(changef ? 50 : 8.0),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          changef = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, Myroutes.homeroutes);
                        setState(() {
                          changef = false;
                        });
                      },
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
              child: Image.asset(
                "asset/linkedin_circled_96px24235235.png",
              )),
        ],
      ),
    );
  }
}
