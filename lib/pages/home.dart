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
            style: TextStyle(color: Colors.white),
          ))),
          shadowColor: Colors.grey,
        ),
        //drawer: Drawer(),
        body: Center(
          child: SizedBox(
            child: Container(
              child: Center(
                child: Text("Hello Iam Obaid",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ),
          ),
        )));
  }
}
