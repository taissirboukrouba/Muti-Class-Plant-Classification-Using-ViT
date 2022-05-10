import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Nav.dart';

class OppsPage extends StatelessWidget {
  const OppsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06D980),
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: Container(
              height: 107,
              width: 300,
              margin: EdgeInsets.only(),
              child: Flexible(
                child: Text(
                  "OPPS ! THIS PART IS NOT AVAILABLE NOW ",
                  style: GoogleFonts.sairaExtraCondensed(
                    fontWeight: FontWeight.w800,
                    color: Color(0xff0A7447),
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.lock,size: 400,color:Color(0xff0A7447) ,),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "THIS APP IS A SCHOOL PROJECT AND IS ON BETA VERSION. FOR NOW IT CAN ONLY IDENTIFY SOME PLANTS ",
              style: GoogleFonts.sairaExtraCondensed(
                fontWeight: FontWeight.w800,
                color: Color(0xff0A7447),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff0D553E),
            ),
            height: 50,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(5.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff098256),
                ),
                child: Center(
                  child: InkWell(
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
                                return Nav();
                              }));
                    },
                    child: Text(
                      ' GO BACK',
                      style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
