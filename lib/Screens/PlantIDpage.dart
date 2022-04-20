import 'dart:io';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class PlantIDpage extends StatefulWidget {
  PlantIDpage({Key? key}) : super(key: key);

  @override
  State<PlantIDpage> createState() => _PlantIDpageState();
}

class _PlantIDpageState extends State<PlantIDpage> {
  File? my_image;
  final imagePicker = ImagePicker();
  Future GetImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      my_image = File(image!.path);
    });
  }

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
                Expanded(
                  child: Container(
                    height: 120,
                    width: 100,
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Lottie.asset(
                      'assets/Svg/animation.json',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 46,
                  width: 300,
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 15),
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
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: InkWell(
                onTap: GetImage,
                child: SvgPicture.asset('assets/Svg/Take-Picture-icon.svg')),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Icon(
            Icons.report,
            color: Color(0xffCE4545),
            size: 40,
          )),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffCE4545),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(7.5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFAFAFA),
              ),
              alignment: Alignment.center,
              width: 350,
              height: 120,
              child: Center(
                child: Text(
                  "MAKE SURE TO TAKE YOUR PICTURES CORRECTLY \n(VISIT THE TIPS PAGE TO KNOW MORE) ",
                  style: GoogleFonts.sairaExtraCondensed(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
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
