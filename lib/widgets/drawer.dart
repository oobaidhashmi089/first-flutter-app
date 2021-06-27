import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Mdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF000000),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: ListView(
            children: [
              Container(
                height: 200,
                child: DrawerHeader(
                    child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color(0xFF000000)),
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Syed Obaid Hashmi",
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                    accountEmail: Text("Syedhashmi089@gmail.com",
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    currentAccountPicture: Padding(
                      padding: const EdgeInsets.all(0),
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/79754399?v=4")),
                    ),
                  ),
                )),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.3,
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.purchased_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "Products",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.3,
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.phone,
                  color: Colors.white,
                ),
                title: Text(
                  "Phone",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
