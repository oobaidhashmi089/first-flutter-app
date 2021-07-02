import 'package:flutter/widgets.dart';

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Items({this.id, this.name, this.desc, this.price, this.color, this.img});
  factory Items.fromjson(Map<String, dynamic> map) {
    Items(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      img: map["img"],
    );
  }
}

class Mitems {
   static List<Items> items=[
    Items(
        id: 1,
        name: "Samsung Galaxy A32",
        desc: "In Stock",
        price: 20000,
        color: "",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkBQ56_o6ibXAFeA5T92Usn7Q1qZSjj24Z6Q&usqp=CAU")
  ];
}
