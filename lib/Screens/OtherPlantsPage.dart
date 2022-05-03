import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../Nav.dart';
import '../models/Plants.dart';

class OtherPlantsPage extends StatefulWidget {
  final String plantType;

  final int index;

  const OtherPlantsPage(
      {Key? key, required this.plantType, required int this.index})
      : super(key: key);

  @override
  State<OtherPlantsPage> createState() => _OtherPlantsPageState();
}

class _OtherPlantsPageState extends State<OtherPlantsPage> {
  myFunction() {
    if (widget.plantType == 'Indoor') {
      return Indoor[widget.index];
    }
    if (widget.plantType == 'Flowers') {
      return Flowers[widget.index];
    }
    if (widget.plantType == 'Outdoor') {
      return Outdoor[widget.index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    myFunction().plantName,
                    style: GoogleFonts.sairaExtraCondensed(
                      fontSize: 25,
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
                              transitionDuration: Duration(milliseconds: 100),
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
                      margin: EdgeInsets.only(left: 10),
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
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 35),
              child: Text(
                myFunction().ScientificName,
                style: GoogleFonts.sairaExtraCondensed(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff098256),
                ),
              ),
            ),
            Container(
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
                        myFunction().externalImage,
                        fit: BoxFit.fill,
                      ),
                    ))),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        padding: EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            myFunction().Description,
                            style: GoogleFonts.sairaExtraCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 80,
                            width: 357,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff098256),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  color: Color(0xffF8F8F8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        child: Text(
                                          "Temperature",
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 250,
                                        child: Icon(
                                          Icons.thermostat,
                                          size: 100,
                                          color: Color(0xff098256),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          myFunction().temp,
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 80,
                            width: 357,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff098256),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  color: Color(0xffF8F8F8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        child: Text(
                                          "Light",
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 250,
                                        child: Icon(
                                          Icons.light_mode,
                                          size: 100,
                                          color: Color(0xff098256),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          myFunction().light,
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 80,
                            width: 357,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff098256),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  color: Color(0xffF8F8F8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        child: Text(
                                          "Water",
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 250,
                                        child: Icon(
                                          Icons.water_damage_outlined,
                                          size: 100,
                                          color: Color(0xff098256),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          myFunction().water,
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
