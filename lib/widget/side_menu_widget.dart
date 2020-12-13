import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          Container(
            color: Colors.black38,
            child: DrawerHeader(
              child: Icon(Icons.local_post_office),
              decoration: BoxDecoration(color: Colors.black),
            ),
          ),
          Container()
          
        ],
      )),
    );
  }
}
