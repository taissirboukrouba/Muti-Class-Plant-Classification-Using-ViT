import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_app/Nav.dart';
import 'package:pfe_app/Screens/TipsPage.dart';
import 'package:pfe_app/models/Articles.dart';

import 'HomeScreen.dart';

class TipArticlePage extends StatelessWidget {
  final int index;

  const TipArticlePage({Key? key , required int this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: SafeArea(
          child: Column(children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Tipsy tips',
                style: GoogleFonts.sairaExtraCondensed(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffCE4545),
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
                          transitionDuration: Duration(milliseconds: 200),
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
                            return Nav();
                          }));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Lottie.network(
                    'https://assets2.lottiefiles.com/packages/lf20_bzpn1b0v.json',
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 15),
          child: Flexible(
            child: Text(
              articles[index].ArticleTitle,
              style: GoogleFonts.sairaExtraCondensed(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffCE4545),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 10,
          child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
            articles[index].ArticleDescription,
                    style: GoogleFonts.sairaExtraCondensed(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      
                    ),
                    textAlign: TextAlign.start
                  ),
                )),
              
          ),
          
        ),
        SizedBox(height: 10,)
      ])),
    );
  }
}
