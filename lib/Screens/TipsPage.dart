import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
import 'package:pfe_app/Screens/PlantIDpage.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: SvgPicture.asset('assets/Svg/Logo.svg'),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 10, top: 35),
                  height: 100,
                  width: 274,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "TIPS AND IDEAS",
                      style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff098256),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffFAFAFA),
            ),
            alignment: Alignment.center,
            width: 350,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(child: SvgPicture.asset('assets/Svg/tips-icon.svg')),
                Center(
                  child: Text(
                    "This page provides tips and tricks\n on plants care  ",
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(0),
              alignment: Alignment.center,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffD64A4A),
                    ),
                    height: 150,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        color: Color(0xffF8F8F8),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 210,
                              child: SvgPicture.asset(
                                  'assets/Svg/red-plant-slice.svg'),
                            ),
                            Positioned(
                              right: 10,
                              top: 15,
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "How to take pictures\n in Nebta ?",
                                  style: GoogleFonts.sairaExtraCondensed(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffD64A4A),
                    ),
                    height: 150,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        color: Color(0xffF8F8F8),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 210,
                              child: SvgPicture.asset(
                                  'assets/Svg/red-plant-slice.svg'),
                            ),
                            Positioned(
                              right: 10,
                              top: 15,
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "How to take pictures\n in Nebta ?",
                                  style: GoogleFonts.sairaExtraCondensed(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffD64A4A),
                    ),
                    height: 150,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        color: Color(0xffF8F8F8),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 210,
                              child: SvgPicture.asset(
                                  'assets/Svg/red-plant-slice.svg'),
                            ),
                            Positioned(
                              right: 10,
                              top: 15,
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "How to take pictures\n in Nebta ?",
                                  style: GoogleFonts.sairaExtraCondensed(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffD64A4A),
                    ),
                    height: 150,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: Container(
                        color: Color(0xffF8F8F8),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 210,
                              child: SvgPicture.asset(
                                  'assets/Svg/red-plant-slice.svg'),
                            ),
                            Positioned(
                              right: 10,
                              top: 15,
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "How to take pictures\n in Nebta ?",
                                  style: GoogleFonts.sairaExtraCondensed(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
