import 'package:edubox_pkl/view/v_login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState(){
    super.initState();
    startSpalshScreen();
  }

  startSpalshScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 39, 78,1),
      body: Center(
        child: Image.asset(
          "assets/team_liquid.png",
          width: 300.0,
          height: 200.0,
        ),
      ),
    );
  }
}
