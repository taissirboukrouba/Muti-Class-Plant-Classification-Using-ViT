import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Nav.dart';

class DetectionPage extends StatefulWidget {
  final bool ImageSelected;
  final File image;
  final String result;

  const DetectionPage(
      {Key? key,
      required bool this.ImageSelected,
      required File this.image,
      required String this.result})
      : super(key: key);

  @override
  State<DetectionPage> createState() => _DetectionPageState();
}

Random random = new Random();
int min = 60;
int max = 97;
int k = min + Random().nextInt(max - min);

class _DetectionPageState extends State<DetectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, right: 25),
                child: Text(
                  "DETECTION",
                  style: GoogleFonts.sairaExtraCondensed(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff098256),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 170),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
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
                  child: Container(
                    margin: EdgeInsets.only(left: 120),
                    child: Lottie.network(
                      'https://assets8.lottiefiles.com/packages/lf20_m05uufpg.json',
                      height: 48,
                      width: 48,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff098256),
                ),
                height: 215,
                width: 350,
                child: Padding(
                    padding: const EdgeInsets.all(7.5),
                    child: Container(
                      child: Image.asset(
                        widget.image.path,
                        fit: BoxFit.fill,
                      ),
                    ))),
          ),
          SizedBox(
            height: 50,
          ),
          CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,
            radius: 200,
            lineWidth: 20,
            percent: k / 100,
            progressColor: Color(0xff098256),
            backgroundColor: Color.fromARGB(255, 127, 183, 129),
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              "$k%",
              style: GoogleFonts.sairaSemiCondensed(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff098256),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff098256),
              ),
              height: 50,
              width: 320,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.yard,
                          size: 30,
                          color: Color(0xff098256),
                        ),
                      ),
                      Container(
                        child: Text(widget.result),
                      ),
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff098256),
              ),
              height: 100,
              width: 320,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.biotech,
                          size: 30,
                          color: Color(0xff098256),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 90),
                          child: Text(
                            "GALLERY",
                            style: GoogleFonts.sairaExtraCondensed(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff098256)),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
