import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Screens/Favourites.dart';
import 'package:pfe_app/Screens/InscriptionScreen.dart';
import 'package:pfe_app/Screens/OppsPage.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 75),
                alignment: Alignment.topLeft,
                child: Text(
                  "PROFILE",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.sairaExtraCondensed(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff098256),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 150, left: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff0D553E),
                ),
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(7.5),
                  child: Container(
                    child: Center(
                      child: InkWell(
                        // ------------------------- don't forget this one ------------------------------
                        onTap: () {},
                        child: Icon(
                          Icons.camera_enhance,
                          size: 40,
                          color: Color(0xff0D553E),
                        ),
                      ),
                    ),
                    color: Color(0xff098256),
                  ),
                ),
              ),
              /* Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
              ),*/
              Container(
                margin: EdgeInsets.only(top: 78, left: 165),
                height: 130,
                width: 100,
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Lottie.asset(
                  'assets/Svg/animation.json',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 370, left: 32),
                width: 195,
                height: 100,
                child: Text(
                  "YOUR WHOLE NAME ",
                  style: GoogleFonts.sairaExtraCondensed(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 400, left: 30),
                height: 300,
                width: 350,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0D553E),
                      ),
                      height: 50,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.all(5.5),
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
                                  Icons.settings,
                                  size: 30,
                                  color: Color(0xff0D553E),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 90),
                                  child: Text(
                                    "SETTINGS",
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0D553E),
                      ),
                      height: 50,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.all(5.5),
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
                                  Icons.favorite,
                                  size: 30,
                                  color: Color(0xff0D553E),
                                ),
                              ),
                              InkWell(
                                onTap: () {
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
                                            return OppsPage();
                                          }));
                                },
                                child: Container(
                                    margin: EdgeInsets.only(left: 60),
                                    child: Text(
                                      "FAVOURITE PLANTS",
                                      style: GoogleFonts.sairaExtraCondensed(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff0D553E)),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      child: InkWell(
                        onTap: () async {
                          var result = await FirebaseAuth.instance.signOut();

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => InscriptionScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff0D553E),
                          ),
                          height: 50,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(5.5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff098256),
                              ),
                              child: Center(
                                child: Text(
                                  ' LOGOUT',
                                  style: GoogleFonts.sairaExtraCondensed(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0D553E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
