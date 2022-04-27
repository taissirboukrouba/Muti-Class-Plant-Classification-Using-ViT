import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Nav.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
import 'package:pfe_app/Screens/InscriptionScreen.dart';
import 'package:pfe_app/Screens/PlantPage.dart';
import 'package:pfe_app/Screens/TipArticlePage.dart';
import 'package:pfe_app/Screens/UserProfile.dart';
import 'package:pfe_app/Screens/onBoardingScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
/* main() {
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        nextScreen: const InscriptionScreen(),
        splash: Container(child: Lottie.asset('assets/Svg/animation.json')),
        splashIconSize: 150,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color(0xffF8F8F8),
        duration: 3000,
      ),
    );
  }
}
