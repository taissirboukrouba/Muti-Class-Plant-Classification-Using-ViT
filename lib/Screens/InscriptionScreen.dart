import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_app/components/Login.dart';
import 'package:pfe_app/components/Signup.dart';

class InscriptionScreen extends StatefulWidget {
  const InscriptionScreen({Key? key}) : super(key: key);

  @override
  State<InscriptionScreen> createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xff06D980),
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70, left: 30),
                child: Text(
                  "Hello.",
                  style: GoogleFonts.sairaExtraCondensed(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0A7447),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200, left: 30),
                height: 48,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xff0D553E),
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
                            ' Sign up',
                            style: GoogleFonts.sairaExtraCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            ' Login',
                            style: GoogleFonts.sairaExtraCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Form(
                child: const TabBarView(children: [
                  SingUp(),
                  Login(),
                ]),
              ),
              /*Container(
                margin: EdgeInsets.only(top: 500),
                child: SvgPicture.asset(
                  'assets/Svg/plantSignup.svg',
                  fit: BoxFit.fill,
                ),
              ),*/
            ],
          )),
    );
  }
}
