import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ob/model/catapp.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';
import 'package:flutter_application_ob/widgets/items.dart';

class Home extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    final dummy = List.generate(20, (index) => Mitems.items[0]);
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
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: ListView.builder(
          itemCount: dummy.length,
          itemBuilder: (context, index) {
            return ItemsWidgets(items: dummy[index]);
          },
        ),
      ),
    ));
  }
}
