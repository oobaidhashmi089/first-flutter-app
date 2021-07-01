import 'package:flutter/material.dart';
import 'package:flutter_application_ob/model/catapp.dart';

class ItemsWidgets extends StatelessWidget {
  final Items items;

  const ItemsWidgets({Key key, @required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(items.img),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text("RS ${items.price}"),
      ),
    );
  }
}
