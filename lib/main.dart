import 'package:edubox_pkl/utils/constant.dart';
import 'package:edubox_pkl/view/home/home.dart';
import 'package:edubox_pkl/view/v_login.dart';
import 'package:edubox_pkl/view/v_splashscreen.dart';
import 'package:edubox_pkl/widget/home_widget.dart';
import 'package:edubox_pkl/view/v_home.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

FirebaseAnalytics analytics;

void main() async{
  analytics = FirebaseAnalytics();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());

} 

class App extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDUBOX PKL',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreenPage(),
      routes: routes,
    );
  }
}
