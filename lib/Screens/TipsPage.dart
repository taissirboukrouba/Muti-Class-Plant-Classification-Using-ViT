import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';
import 'package:pfe_app/Screens/PlantIDpage.dart';
import 'package:pfe_app/Screens/TipArticlePage.dart';
import 'package:pfe_app/models/Articles.dart';

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
                  height: 120,
                  width: 100,
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Lottie.asset('assets/Svg/animation.json',
                      fit: BoxFit.fill),
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
                Container(
                    child: Icon(
                  Icons.lightbulb,
                  size: 40,
                  color: Color(0xff098256),
                )),
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
          Flexible(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22),
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
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          transitionDuration:
                                              Duration(milliseconds: 100),
                                          transitionsBuilder: (context,
                                              animation, animationTime, child) {
                                            animation = CurvedAnimation(
                                                parent: animation,
                                                curve: Curves.bounceIn);
                                            return ScaleTransition(
                                              scale: animation,
                                              child: child,
                                              alignment: Alignment.center,
                                            );
                                          },
                                          pageBuilder: (context, animation,
                                              animationTime) {
                                            return TipArticlePage(
                                              index: index,
                                            );
                                          }));
                                },
                                child: Container(
                                  height: 108,
                                  width: 170,
                                  child: Flexible(
                                    child: Text(
                                      articles[index].ArticleTitle,
                                      style: GoogleFonts.sairaExtraCondensed(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,)
                ]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
