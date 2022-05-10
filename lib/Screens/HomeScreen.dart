import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Screens/OppsPage.dart';
import 'package:pfe_app/components/PlantsList.dart';
import 'package:pfe_app/components/otherPlantsList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        extendBody: true,
        body: Stack(
          children: [
            /*------------------------------ upper part -------------------*/
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    padding: EdgeInsets.only(top: 25, left: 20),
                    child: Lottie.asset('assets/Svg/animation.json',
                        fit: BoxFit.fill),
                  ),
                  InkWell(
                    onTap: () {
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
                                return OppsPage();
                              }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 46,
                      width: 274,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffEEEEEE),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff0D553E),
                        ),
                        height: 70,
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.all(3.5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff098256),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Color(0xff0D553E),
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 10, bottom: 7),
                                    child: Text(
                                      "SEARCH PLANTS",
                                      style: GoogleFonts.sairaExtraCondensed(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff0D553E)),
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*--------------------------------------------------------------------------*/
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 120),
              alignment: Alignment.topLeft,
              child: Text(
                "HOME",
                textAlign: TextAlign.left,
                style: GoogleFonts.sairaExtraCondensed(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff098256),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(top: 200),
                height: 48,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Color(0xff0A7447),
                          borderRadius: BorderRadius.circular(5)),
                      tabs: [
                        Tab(
                          child: Text(
                            ' ALL',
                            style: GoogleFonts.sairaExtraCondensed(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0D553E)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            ' Indoor',
                            style: GoogleFonts.sairaExtraCondensed(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0D553E)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            ' Outdoor',
                            style: GoogleFonts.sairaExtraCondensed(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0D553E),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            ' Flowers',
                            style: GoogleFonts.sairaExtraCondensed(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0D553E),
                            ),
                          ),
                        ),
                      ]),
                )),
            Container(
              margin: EdgeInsets.only(top: 250),
              child: TabBarView(children: [
                PlantsList(
                  plantType: "All",
                ),
                otherPlantsList(
                  plantType: "Indoor",
                ),
                otherPlantsList(
                  plantType: "Outdoor",
                ),
                otherPlantsList(
                  plantType: "Flowers",
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
