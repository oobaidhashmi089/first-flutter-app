import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Center(
              child: Center(
                  child: Text(
            "Hello Flutter",
            style: TextStyle(color: Colors.black),
          ))),
          shadowColor: Colors.grey,
        ),
        body: Center(
          child: SizedBox(
            child: Container(
              child: Center(
                child: Text("Hello Iam Obaid",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                    )),
              ),
            ),
          ),
        )));
  }
}
