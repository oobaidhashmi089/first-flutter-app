import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ob/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_ob/model/catapp.dart';
import 'package:flutter_application_ob/widgets/drawer.dart';
import 'package:flutter_application_ob/widgets/items.dart';

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
          backgroundColor: Colors.white,
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
      body: SafeArea(
        child: Container(
            color: Colors.white,
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Saint-Étienne APP".text.bold.xl5.black.center.make(),
                "Atlético mineiro".text.xl.blueGray500.make(),
                if (Mitems.items != null && Mitems.items.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(child: CircularProgressIndicator(color: Colors.black)),
              ],
            )),
      ),
    ));
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Mitems.items.length,
      itemBuilder: (context, index) {
        final catalog = Mitems.items[index];
        return CatalogItmes(catalog: catalog);
      },
    );
  }
}

class CatalogItmes extends StatelessWidget {
  final Items catalog;
  const CatalogItmes({
    Key key,
    @required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.img),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.color(Mthemes.darkblue).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Mthemes.darkblue),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: Text("BUY"))
                ])
          ],
        ))
      ],
    )).white.rounded.square(150).make().p16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key key, @required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.white.rounded.p16.make().p16().w40(context);
  }
}
