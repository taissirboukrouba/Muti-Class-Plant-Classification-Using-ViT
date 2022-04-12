import 'dart:ffi';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantIDpage extends StatefulWidget {
  PlantIDpage({Key? key}) : super(key: key);

  @override
  State<PlantIDpage> createState() => _PlantIDpageState();
}

class _PlantIDpageState extends State<PlantIDpage> {
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
                  padding: EdgeInsets.only(top: 32, left: 20),
                  child: SvgPicture.asset('assets/Svg/Logo.svg'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 46,
                  width: 300,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "PLANT IDENTIFICATION",
                      style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 40,
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
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/Svg/Take-Picture-icon.svg'),
          ),
          SizedBox(
            height: 60,
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
                Container(
                    child: SvgPicture.asset('assets/Svg/Allert-icon.svg')),
                Center(
                  child: Text(
                    "Make sure to take your pictures correctly\n(visit the tips page to know more) ",
                    style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
