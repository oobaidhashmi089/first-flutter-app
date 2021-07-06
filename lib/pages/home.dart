import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ob/model/catapp.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';
import 'package:flutter_application_ob/widgets/items.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get child => null;

  @override
  void initState() {
    super.initState();
    dataload();
  }

  dataload() async {
    await Future.delayed(Duration(seconds: 2));
    final json = await rootBundle.loadString("asset/files/app.json");
    final decodedData = jsonDecode(json);
    var productsData = decodedData["products"];
    Mitems.items = List.from(productsData)
        .map<Items>((item) => Items.fromMap(item))
        .toList();
    setState(() {});
  }

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
        body: Padding(
            padding: const EdgeInsets.all(38.0),
            child: (Mitems.items != null && Mitems.items.isNotEmpty)
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      var item = Mitems.items[index];

                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Card(
                              child: GridTile(
                            child: Image.network(item.img),
                            header: Text(item.name),
                            footer: Text(item.price.toString()),
                          )));
                    })
                : Center(
                    child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.black)),
                  ))));
  }
}
