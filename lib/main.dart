import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pfe_app/Nav.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
import 'package:pfe_app/Screens/PlantIDpage.dart';
import 'package:pfe_app/Screens/PlantPage.dart';
import 'package:pfe_app/Screens/TipArticlePage.dart';
import 'package:pfe_app/Screens/TipsPage.dart';
import 'package:pfe_app/Screens/onBoardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  Nav(),
      
    );
  }
}
