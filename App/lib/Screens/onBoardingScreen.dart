import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Nav.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06D980),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          /*----------------------- PAGE 1 -------------------------------*/
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset(
                  'assets/Svg/plant-onBoarding .svg',
                  fit: BoxFit.fill,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Container(
                      child: Center(
                          child: SvgPicture.asset(
                              'assets/Svg/onBoarding-logo.svg')),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: Center(
                        child: Text(
                          'Welcome to NEBTA!',
                          style: GoogleFonts.sairaExtraCondensed(
                            fontWeight: FontWeight.w800,
                            color: Color(0xff0A7447),
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      child: Center(
                        child: Text(
                          ' The place where plants should always \nbe identified and understood.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sairaSemiCondensed(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0A7447),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE6F4EE),
                        ),
                        height: 49,
                        width: 266,
                        child: TextButton(
                          onPressed: () {
                            controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            'Let\'s get started',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sairaSemiCondensed(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0A7447),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          /*----------------------- PAGE 2 -------------------------------*/
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset(
                  'assets/Svg/man-onBoading.svg',
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
              ),
              Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          controller.jumpTo(5);
                        },
                        child: Text(
                          'SKIP',
                          style: GoogleFonts.sairaExtraCondensed(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffE6F4EE),
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Advice & Tips ',
                        style: GoogleFonts.sairaExtraCondensed(
                          fontWeight: FontWeight.w800,
                          color: Color(0xff0A7447),
                          fontSize: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 90,
                        width: 300,
                        padding: EdgeInsets.only(left: 25.0),
                        child: Text(
                          'we offer some ideas and tips to help you get started and  take care of your plants',
                          style: GoogleFonts.sairaExtraCondensed(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffE6F4EE),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Align(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE6F4EE),
                        ),
                        height: 49,
                        width: 130,
                        child: TextButton(
                          onPressed: () {
                            controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Center(
                            child: Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.sairaExtraCondensed(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0A7447),
                                fontSize: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          /*----------------------- PAGE 3 -------------------------------*/
          Stack(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    'assets/Svg/onBoarding-Knwoledge.svg',
                    fit: BoxFit.fill,
                    color: Colors.black,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 90,
                  width: 300,
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Expand your knowledge in phytology with different plants from around the world',
                    style: GoogleFonts.sairaExtraCondensed(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE6F4EE),
                      fontSize: 21,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                  margin: EdgeInsets.only(top: 430, left: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffE6F4EE),
                  ),
                  height: 49,
                  width: 130,
                  child: TextButton(
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Center(
                      child: Text(
                        'Next',
                        style: GoogleFonts.sairaExtraCondensed(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0A7447),
                          fontSize: 23,
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                margin: EdgeInsets.only(left: 25.0, top: 500),
                child: Text(
                  'Expand your knoweldge ',
                  style: GoogleFonts.sairaExtraCondensed(
                    fontWeight: FontWeight.w800,
                    color: Color(0xff0A7447),
                    fontSize: 75,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 10),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    controller.jumpTo(5);
                  },
                  child: Text(
                    'SKIP',
                    style: GoogleFonts.sairaExtraCondensed(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE6F4EE),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          /*----------------------- PAGE 4 -------------------------------*/
          Stack(
            children: [
              Align(
                child: Container(
                  width: 380,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(
                    top: 50,
                  ),
                  child: Text(
                    '"One shot is all it takes"',
                    style: GoogleFonts.sairaExtraCondensed(
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0A7447),
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 100),
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    'assets/Svg/onBoarding-picture.svg',
                    fit: BoxFit.fill,
                    color: Colors.black,
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 300),
                  child: Center(
                    child: Text(
                      'Make sure to get your picture clear , and you identification\n will be clearer',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sairaExtraCondensed(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffE6F4EE),
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 500),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE6F4EE),
                    ),
                    height: 49,
                    width: 130,
                    child: TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Center(
                        child: Text(
                          'Next',
                          style: GoogleFonts.sairaExtraCondensed(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0A7447),
                            fontSize: 23,
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 10),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    controller.jumpTo(5);
                  },
                  child: Text(
                    'SKIP',
                    style: GoogleFonts.sairaExtraCondensed(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE6F4EE),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          /*----------------------- PAGE 5 -------------------------------*/
          Stack(
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.only(left: 25.0, top: 20),
                child: Text(
                  'NOW YOU ARE READY TO GO ',
                  style: GoogleFonts.sairaExtraCondensed(
                    fontWeight: FontWeight.w800,
                    color: Color(0xff0A7447),
                    fontSize: 80,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(
                    'assets/Svg/onBoarding-happy.svg',
                    fit: BoxFit.fill,
                    color: Colors.black,
                  )),
              Container(
                margin: EdgeInsets.only(top: 700),
                alignment: Alignment.bottomCenter,
                color: Color(0xffE6F4EE),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 200),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                child: child,
                                alignment: Alignment.center,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return Nav();
                            }));
                  },
                  child: Center(
                      child: Text(
                    "LET’S GO !",
                    style: GoogleFonts.sairaExtraCondensed(
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0A7447),
                      fontSize: 40,
                    ),
                  )),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.only(right: 19.0, top: 250),
                  child: Text(
                    'Hope you enjoy our \napp Have a nice day',
                    style: GoogleFonts.sairaExtraCondensed(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE6F4EE),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
