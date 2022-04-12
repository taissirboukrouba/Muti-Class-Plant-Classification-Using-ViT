import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/Nav.dart';
import 'package:pfe_app/Screens/TipsPage.dart';

import 'HomeScreen.dart';

class TipArticlePage extends StatelessWidget {
  const TipArticlePage({Key? key}) : super(key: key);

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
                          transitionDuration: Duration(milliseconds: 300),
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
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffCE4545),
                      size: 30,
                    ),
                    Text(
                      'Go Back',
                      style: GoogleFonts.sairaExtraCondensed(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffCE4545),
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
            "Article Question's title",
            style: GoogleFonts.sairaExtraCondensed(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xffCE4545),
            ),
          ),
        ),
        Flexible(
          flex: 10,
          child: SingleChildScrollView(
            child: Container(
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
          ),
        )
      ])),
    );
  }
}
