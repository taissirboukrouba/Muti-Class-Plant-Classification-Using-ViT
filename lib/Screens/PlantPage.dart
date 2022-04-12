import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Screens/HomeScreen.dart';

class PlantPage extends StatefulWidget {
  const PlantPage({Key? key}) : super(key: key);

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        body:  Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'PlantType',
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
                                    parent: animation, curve: Curves.elasticInOut);
                                return ScaleTransition(
                                  scale: animation,
                                  child: child,
                                  alignment: Alignment.center,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return HomeScreen();
                              }));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff098256),
                          size: 30,
                        ),
                        Text(
                          'Go Back',
                          style: GoogleFonts.sairaExtraCondensed(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff098256),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "PlantName",
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
                        'assets/images/cute-phone-wallpaper.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ))),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pretium fusce id velit ut. In vitae turpis massa sed elementum. Id interdum velit laoreet id donec ultrices tincidunt. Facilisis gravida neque convallis a cras semper auctor neque. Leo duis ut diam quam nulla porttitor massa id. Rhoncus mattis rhoncus urna neque viverra. Leo vel fringilla est ullamcorper eget. Tellus at urna condimentum mattis pellentesque. Non tellus orci ac auctor. Massa massa ultricies mi quis hendrerit dolor magna eget. Commodo elit at imperdiet dui accumsan sit amet nulla facilisi.\nSed elementum tempus egestas sed sed risus pretium quam. Amet commodo nulla facilisi nullam. Enim diam vulputate ut pharetra sit amet aliquam id. Ornare massa eget egestas purus viverra accumsan in. Tristique senectus et netus et malesuada fames ac. Cursus vitae congue mauris rhoncus. Scelerisque purus semper eget duis at tellus at urna condimentum. Aenean sed adipiscing diam donec adipiscing tristique risus nec. Neque volutpat ac tincidunt vitae semper quis lectus nulla. Dui sapien eget mi proin sed libero. Ac felis donec et odio pellentesque diam volutpat commodo sed. Lectus proin nibh nisl condimentum id venenatis a condimentum vitae. Maecenas ultricies mi eget mauris pharetra et ultrices neque ornare. Eget nullam non nisi est sit. A diam maecenas sed enim ut.",
                          style: GoogleFonts.sairaExtraCondensed(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 158,
                            width: 120,
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
                                        top: 12,
                                        right: 2,
                                        child: Icon(
                                          Icons.thermostat,
                                          size: 200,
                                          color: Color(0xff098256),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "72C°",
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
                        Container(
                            height: 158,
                            width: 120,
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
                                        top: 50,
                                        right: 10,
                                        child: Icon(
                                          Icons.light_mode,
                                          size: 150,
                                          color: Color(0xff098256),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Meduim",
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
                        Container(
                            height: 158,
                            width: 120,
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
                                          "Water/Day",
                                          style:
                                              GoogleFonts.sairaExtraCondensed(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 50,
                                        right: 20,
                                        child: Icon(
                                          Icons.water_damage_outlined,
                                          size: 150,
                                          color: Color(0xff098256),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "120ml",
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
