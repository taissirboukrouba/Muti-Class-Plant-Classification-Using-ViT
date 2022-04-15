import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Nav.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
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
      home: onBoardingScreen()/*AnimatedSplashScreen(
        nextScreen: Nav(),
        splash: Container(child: Lottie.asset('assets/Svg/animation_l1zn0uh1.json')),
        splashIconSize: 150,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Color(0xffF8F8F8),
        duration: 3000,
      ),*/
    );
  }
}
