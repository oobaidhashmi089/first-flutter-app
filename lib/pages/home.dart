import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';

class Home extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
            title: Center(
                child: Image.asset(
              'asset/windows_10_store.png',
              height: 100,
              width: 100,
            )),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    CupertinoIcons.shopping_cart,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  }),
            ]),
        drawer: Mdrawer(),
        body: Center(
          child: SizedBox(
            child: Container(
              child: Center(
                child: Text("Hello Iam Obaid",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ),
          ),
        )));
  }
}
