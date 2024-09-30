import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Nav.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
import 'package:pfe_app/models/Plants.dart';

class PlantPage extends StatefulWidget {
  final int index;

  const PlantPage({Key? key, required this.index}) : super(key: key);

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
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
                    plants[widget.index].plantName,
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
                plants[widget.index].ScientificName,
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
                        plants[widget.index].externalImage,
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
                            plants[widget.index].Description,
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
                                          plants[widget.index].temp,
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
                                          plants[widget.index].light,
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
                                          plants[widget.index].water,
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
