import 'package:flutter/material.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
            // backgroundColor: Color(0xff310263),
            title: Center(
                child: Center(
          child: Image.asset("asset/home_page.png"),
        ))),
        drawer: Mdrawer(),
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
