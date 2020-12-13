import 'package:edubox_pkl/view/home/home.dart';
import 'package:edubox_pkl/view/v_getlocation.dart';
import 'package:edubox_pkl/view/v_profile.dart';
import 'package:edubox_pkl/view/v_servant.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String tag = 'btm-nav';
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<Home> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      ProductsScreen(),
      ServantView(),
      LocationPage(),
    ];

    final _BottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('User'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bookmark),
        title: Text('Servant'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Location'),
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _BottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
